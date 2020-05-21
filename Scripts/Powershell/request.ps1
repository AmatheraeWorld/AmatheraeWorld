function request{
param(
[Parameter(Mandatory)]
[string] $url,
[Parameter(Mandatory)]
[string] $userAgent
)
$response = Invoke-WebRequest $url -UserAgent $userAgent
return $response
}
