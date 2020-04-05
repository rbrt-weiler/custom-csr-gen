# custom-csr-gen

Generate Certificate Signing Requests for hosts with multiple Subject Alternative Names and/or IP addresses.

## Files

### custom-openssl.cnf

This file contains the OpenSSL config required to create a new private key and CSR with as many SANs as required.

### custom-csr-gen.sh

This script file calls OpenSSL with the required options to generate the private key and CSR.

## HowTo

You will need to edit both files to suit your requirements. Once both files have been edited, call `custom-csr-gen.sh`. The private key and the CSR will be written to seperate files, both starting with a timestamp matching the point in time when the script was called.

Once the CSR and key have been generated, send the CSR to your Certificate Authority of choice.

When the finished certificate has been returned to you, copy the private key and the certificate to the appropriate directories. Common directories are:

* `/etc/apache2/ssl`
* `/etc/ssl/certs` (certificate) and `/etc/ssl/private` (key)

Then edit the webserver configuration to use the new certificate and private key. Do not forget to reload the webserver daemon.
