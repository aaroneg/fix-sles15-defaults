#! /usr/bin/pwsh
copy-item /etc/sysconfig/yast2 ~/yast2.bak
$regex='Y2NCURSES_COLOR_THEME=""'
(get-content /etc/sysconfig/yast2) -replace $regex, 'Y2NCURSES_COLOR_THEME="mono"'|Set-content /etc/sysconfig/yast2
