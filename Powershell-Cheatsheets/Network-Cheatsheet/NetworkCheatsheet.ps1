################################################################################
# Network Cheatsheet - PowerShell & Command Line Networking Commands
# Author: Helen Najar
# Purpose: Quick reference for troubleshooting and managing network connections
################################################################################

# Basic Network Information Commands
Get-NetAdapter                      # List all network adapters
Get-NetIPAddress                     # Display current IP addresses
Get-NetRoute                         # Show active network routes
ipconfig /all                        # Show detailed IP configuration
ipconfig /flushdns                   # Clear the DNS cache (helps resolve DNS issues)
ipconfig /release                    # Release the current IP address
ipconfig /renew                      # Request a new IP address from DHCP
Get-NetConnectionProfile              # Display current network profile (Public, Private, Domain)
Invoke-RestMethod -Uri "https://api.ipify.org" # Get public IP address

# DNS & IP Address Configuration
Resolve-DnsName google.com            # Test DNS resolution
Test-Connection google.com            # Alternative to ping for testing connectivity
Get-DnsClientServerAddress            # Show current DNS server settings
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses ("8.8.8.8", "8.8.4.4")  
                                       # Change DNS to Google Public DNS

# Network Troubleshooting
ping google.com                       # Test basic network connectivity
tracert google.com                     # Trace route to a destination (Windows command)
Test-NetConnection google.com          # PowerShell alternative to ping
Test-NetConnection -ComputerName google.com -CommonTCPPort HTTP  
                                       # Check if HTTP (port 80) is open
Test-NetConnection -ComputerName google.com -Port 443  
                                       # Test if a specific port is open
netsh wlan show interfaces             # Show detailed Wi-Fi settings (for wireless)
Get-NetTCPConnection | Sort-Object State -Descending | Format-Table -AutoSize  
                                       # Display active TCP connections

# General Network Reset (Use if multiple fixes fail)
netsh int ip reset                     # Reset TCP/IP stack  
netsh winsock reset                     # Reset Winsock catalog  
ipconfig /release && ipconfig /renew && ipconfig /flushdns  
Restart-NetAdapter -Name "Ethernet" -Confirm:$false  

# List open ports and active connections
Get-NetTCPConnection | Select-Object LocalAddress, LocalPort, RemoteAddress, RemotePort, State | Format-Table -AutoSize
netstat -an                            # Show active connections and listening ports
Get-NetFirewallRule | Format-Table -AutoSize  
                                       # Show all firewall rules
New-NetFirewallRule -DisplayName "Allow RDP" -Direction Inbound -Protocol TCP -LocalPort 3389 -Action Allow  
                                       # Open RDP (port 3389) in firewall
Test-NetConnection -ComputerName google.com -Port 22  
                                       # Check if SSH is accessible
Get-NetTCPConnection -LocalPort 3389   # Check if RDP is listening


# Reset Network & Adapter Settings (Useful for Network Issues)
Restart-NetAdapter -Name "Ethernet" -Confirm:$false  
                                       # Restart a network adapter
Disable-NetAdapter -Name "Ethernet" -Confirm:$false; Start-Sleep -s 5; Enable-NetAdapter -Name "Ethernet"  
                                       # Disable & re-enable network adapter (fixes connectivity issues)
netsh int ip reset                     # Reset TCP/IP stack (useful for persistent network issues)
netsh winsock reset                     # Reset Winsock catalog (fixes socket-related issues)

# Advanced Diagnostics & Logs
Get-NetAdapterStatistics               # Show detailed adapter statistics
Get-NetAdapterRsc                       # Display Receive Segment Coalescing (useful for performance tuning)
Get-NetAdapterAdvancedProperty         # List advanced properties of a network adapter
Get-NetIPConfiguration                 # Show all IP-related configuration settings
Get-WinEvent -LogName System | Where-Object {$_.Id -eq 10400}  
                                       # Check for recent network disconnections/errors in event logs

# VPN Troubleshooting (Common Issues & Fixes)
# Identify VPN adapters
Get-NetAdapter | Where-Object {$_.InterfaceDescription -like "*VPN*"}

# Check if the system is pulling from IPv6 instead of IPv4 (can cause shared drive issues)
ipconfig /all | findstr "IPv6"

# Verify if IPv6 is active (disable if necessary)
Get-NetIPAddress | Where-Object {$_.AddressFamily -eq "IPv6"}

# Disable IPv6 on a specific VPN connection (Replace "VPN Connection Name" with actual name)
Set-NetIPInterface -InterfaceAlias "VPN Connection Name" -AddressFamily IPv6 -Dhcp Disabled

# Check if VPN server is reachable
Test-NetConnection -ComputerName vpn.example.com -Port 443

# Verify VPN interface settings
Get-NetIPConfiguration | Select-Object InterfaceAlias, InterfaceIndex, Dhcp

# Force refresh of the VPN adapter’s IP configuration
ipconfig /release && ipconfig /renew && ipconfig /flushdns

# Common VPN Fixes for Shared Drive Access Issues
Set-NetIPInterface -InterfaceAlias "VPN Connection Name" -AddressFamily IPv6 -Dhcp Disabled  
                                       # Disable IPv6 on the VPN interface

Set-NetIPInterface -InterfaceAlias "VPN Connection Name" -InterfaceMetric 1  
                                       # Prioritize VPN traffic to ensure it's used correctly

Get-SmbMapping  
                                       # Check existing shared drive mappings over VPN

net use * /delete  
                                       # Clear old shared drive mappings (fixes VPN access issues)

net use X: \\ServerName\SharedFolder /user:Domain\User  
                                       # Remap shared drive manually after connecting to VPN

# Wireless Network & Wi-Fi Diagnostics
netsh wlan show interfaces              # Display Wi-Fi details, including signal strength
netsh wlan show networks mode=bssid     # Show available Wi-Fi networks
Get-NetAdapter -Physical | Where-Object { $_.InterfaceDescription -like "*Wi-Fi*" }  
                                       # Get Wi-Fi network adapter details

# Additional PowerShell Networking Tools
Test-NetConnection -ComputerName google.com -Port 443  
                                       # Check if HTTPS is accessible
Get-NetIPConfiguration | Format-List    # Display detailed network configuration
(Get-NetTCPConnection).State | Sort-Object | Get-Unique  
                                       # Show all unique TCP connection states
