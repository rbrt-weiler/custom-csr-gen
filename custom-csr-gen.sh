#!/bin/bash

DATETIME="`date +%Y%m%d-%H%M%S`"
HOSTNAMEF="`hostname -f`"
HOSTNAMES="`hostname -s`"

openssl req -new -newkey rsa:2048 -nodes -sha256 -subj "/C=DE/L=Koeln/O=Example GmbH/OU=IT/CN=${HOSTNAMEF}/emailAddress=it.department@example.com" -config custom-openssl.cnf -out "${DATETIME}-${HOSTNAMES}-csr.pem" -keyout "${DATETIME}-${HOSTNAMES}-key.pem"

# vim: set sw=4 ts=4 noet ft=sh fenc=us-ascii ff=unix tw=0 wrap nu :
