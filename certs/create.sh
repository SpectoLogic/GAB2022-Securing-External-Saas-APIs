# Create a signing key for the CA
openssl genrsa -out contosoCA.key 4096
# Create CA Certificate
openssl req -x509 -new -nodes -key contosoCA.key -days 3650 -config contosoCA.cfg -out contosoCA.pem
# Export as PFX and CER file (windows)
openssl pkcs12 -export -out contosoCA.pfx -in contosoCA.pem -inkey contosoCA.key -passin pass:root -passout pass:root
openssl x509 -outform der -in contosoCA.pem -out contosoCA.cer

# Create a key for demoClient
openssl genrsa -out demoClient.key 4096
# Create a certificate signing request for demoClient
openssl req -new -key demoClient.key -out demoClient.csr -config demoClient.cfg
# Sign with CA
openssl x509 -req -in demoClient.csr -CA contosoCA.pem -CAkey contosoCA.key -CAcreateserial -out demoClient.crt -days 365
# Export as PFX
openssl pkcs12 -export -out demoClient.pfx -in demoClient.crt -inkey demoClient.key -passin pass:client -passout pass:client
