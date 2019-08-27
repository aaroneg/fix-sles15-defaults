#! /bin/bash
zypper update -y && zypper --non-interactive install curl tar gzip libopenssl1_0_0 libicu60_2
curl -L https://github.com/PowerShell/PowerShell/releases/download/v6.2.2/powershell-6.2.2-linux-x64.tar.gz -o /tmp/powershell.tar.gz
mkdir -p /opt/microsoft/powershell/6.2.2
tar zxf /tmp/powershell.tar.gz -C /opt/microsoft/powershell/6.2.2
chmod +x /opt/microsoft/powershell/6.2.2/pwsh
ln -s /opt/microsoft/powershell/6.2.2/pwsh /usr/bin/pwsh
