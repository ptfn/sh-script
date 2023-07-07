#!/bin/bash

title="$(id -un)@$(hostname -f)"
os="$(grep -E '^PRETTY_NAME=' /etc/os-release | cut -d '"' -f2) $(uname -p)"
kernel="$(uname -r)"
uptime="$(uptime -p | cut -c 4-)"
package="$(dpkg --get-selections | wc --lines) (dpkg)"
shell="${SHELL##*/}"

total=$(grep MemTotal /proc/meminfo | awk '{print $2}')
avail=$(grep MemAvailable /proc/meminfo | awk '{print $2}')
used=$((total-avail))
temp="1048576.1"

mem="$(echo "scale = 2; $used/$temp" | bc) / $(echo "scale = 2; $total/$temp" | bc) G"

echo -e " .= .-_-. =.  $title"
echo -e "((_/)o o(\_)) os      $os" 
echo -e "  -'(. .)' -  krn     $kernel"
echo -e "  /| \_/ |\   up      $uptime"
echo -e " ( | GNU | )  pkgs    $package"
echo -e " /'\_____/'\  sh      $shell"
echo -e " \__)   (__/  mem     $mem"
