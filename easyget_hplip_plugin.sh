# DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#                     Version 2, December 2004

#  Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>

#  Everyone is permitted to copy and distribute verbatim or modified
#  copies of this license document, and changing it is allowed as long
#  as the name is changed.

#             DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
#    TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

#   0. You just DO WHAT THE FUCK YOU WANT TO.



#!/bin/bash

destination_dir=""

echo "Checking hplip version..."
hplip_package_version=$(dnf list installed | grep -m 1 hplip | awk '{ print $2 }')
hplip_version=${hplip_package_version%*-[0-9]*}
echo $hplip_version

echo -e "\nInsert the directory path where save hplip plugin (e.g. /home/myuser/)"
read -e destination_dir

echo -e "\nDownloading the hplip plugin...\n"
wget -P ${destination_dir} https://www.openprinting.org/download/printdriver/auxfiles/HP/plugins/hplip-${hplip_version}-plugin.run

exit 0
