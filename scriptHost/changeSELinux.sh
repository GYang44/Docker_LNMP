#!/bin/bash

#this meant to be run from the directory from Dockerfile
echo --- changing SElinux context ---
chcon -R -t svirt_sandbox_file_t ./app
chcon -R -t svirt_sandbox_file_t ./certs
chcon -R -t svirt_sandbox_file_t ./mysql
chcon -R -t svirt_sandbox_file_t ./nginx
chcon -R -t svirt_sandbox_file_t ./php-fpm
echo --- finish moving certs for $DOMAIN ---
