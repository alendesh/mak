#!/bin/bash

serverName="${1}"

openssl s_client -servername "${serverName}" -connect ${serverName}:443 </dev/null | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > ${serverName}.crt
