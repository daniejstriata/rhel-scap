#!/bin/bash
# packages = bash

{{% if 'sle' in product or 'ubuntu' in product or 'debian' in product %}}
etc_bash_rc="/etc/bash.bashrc"
{{% else %}}
etc_bash_rc="/etc/bashrc"
{{% endif %}}


sed -i '/umask/d' $etc_bash_rc
echo "    [ \`umask\` -eq 0 ] && umask 022" >> $etc_bash_rc
umask 000