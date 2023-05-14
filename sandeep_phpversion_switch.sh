# @category   PHP
# @package    SwitchPhpVersion
# @author Sandeep Gupta
# @email ersandeepgu@gmail.com
# @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)



#!/bin/bash

# make it executable using the command chmod +x sandeep_phpversion_switch.sh.
# 1) chmod +x sandeep_phpversion_switch.sh
# 2) sudo ./sandeep_phpversion_switch.sh 8.2


echo "Welcome to my script! Sandeep"

if [ -z "$1" ]; then
    echo "Please specify the PHP version in which you want to switch"
    exit 1
fi
php_bin=$(which php${1})
if [ -z "${php_bin}" ]; then
    echo "OPPS! PHP ${1} not found in your system"
    exit 1
fi
sudo update-alternatives --set php "${php_bin}"
sudo service apache2 restart
echo "Great you done this !!! PHP version changed to ${1}"
