#!/bin/bash
# platform = multi_platform_ubuntu
# packages = libpam-pkcs11

echo 'aauth [success=2 default=ignore] pam_pkcs11.so' > /etc/pam.d/common-auth