################################################################################
# Network Cheatsheet - PowerShell & Command Line Networking Commands
# Author: Helen Najar (Revised)
# Purpose: Quick reference for troubleshooting and managing network connections
################################################################################

# 1. Basic Network Information
# Get-NetAdapter                      # List all network adapters
# Get-NetIPAddress                     # Display current IP addresses
# Get-NetRoute                         # Show active network routes
# ipconfig /all                        # Show detailed IP configuration
# Get-NetConnectionProfile             # Display current network profile (Public, Private, Domain)
# Invoke-RestMethod -Uri "https://api.ipify.org"  # Retrieve public IP address

# 2. DNS & IP Configuration
# Resolve-DnsName google.com           # Test DNS resolution
# ipconfig /flushdns                   # Clear the DNS cache
# Get-DnsClientServerAddress           # Show current DNS server settings
# Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses ("8.8.8.8", "8.8.4.4")
#                                      # Change DNS to Google Public DNS

# 3. Network Connectivity & Troubleshooting
# ping google.com                      # Test basic network connectivity
# tracert google.com                   # Trace route to a destination
# Test-Connection google.com           # Alternative to ping for testing connectivity
# Test-NetConnection google.com        # Test network connection via PowerShell
# Test-NetConnection -ComputerName google.com -CommonTCPPort HTTP
#                                      # Check if HTTP (port 80) is open
# Test-NetConnection -ComputerName google.com -Port 443
#                                      # Test if a specific port is open
# Get-NetTCPConnection | Sort-Object State -Descending | Format-Table -AutoSize
#                                      # Display active TCP connections

# 4. Network Reset & Adapter Troubleshooting
# netsh int ip reset                   # Reset TCP/IP stack
# netsh winsock reset                  # Reset Winsock catalog
# ipconfig /release; ipconfig /renew; ipconfig /flushdns
#                                      # Renew IP configuration and clear DNS cache
# Restart-NetAdapter -Name "Ethernet" -Confirm:$false
#                                      # Restart the network adapter
# Disable-NetAdapter -Name "Ethernet" -Confirm:$false; Start-Sleep -s 5; Enable-NetAdapter -Name "Ethernet"
#                                      # Disable and re-enable the network adapter

# 5. Open Ports & Firewall Rules
# Get-NetTCPConnection | Select-Object LocalAddress, LocalPort, RemoteAddress, RemotePort, State | Format-Table -AutoSize
#                                      # List open ports and active connections
# netstat -an                        # Show active connections and listening ports
# Get-NetFirewallRule | Format-Table -AutoSize
#                                      # Display all firewall rules
# New-NetFirewallRule -DisplayName "Allow RDP" -Direction Inbound -Protocol TCP -LocalPort 3389 -Action Allow
#                                      # Open RDP (port 3389) in the firewall
# Test-NetConnection -ComputerName google.com -Port 22
#                                      # Check if SSH (port 22) is accessible
# Get-NetTCPConnection -LocalPort 3389  # Verify if RDP is listening

# 6. Advanced Diagnostics & Logs
# Get-NetAdapterStatistics             # Show detailed adapter statistics
# Get-NetAdapterRsc                    # Display Receive Segment Coalescing settings (useful for performance tuning)
# Get-NetAdapterAdvancedProperty       # List advanced properties of a network adapter
# Get-NetIPConfiguration               # Display all IP-related configuration settings
# Get-WinEvent -LogName System | Where-Object {$_.Id -eq 10400}
#                                      # Check for recent network disconnections/errors in event logs

# 7. VPN Troubleshooting & Configuration
# Get-NetAdapter | Where-Object {$_.InterfaceDescription -like "*VPN*"}
#                                      # Identify VPN adapters
# ipconfig /all | findstr "IPv6"       # Check if IPv6 is active (can cause issues with shared drives)
# Get-NetIPAddress | Where-Object {$_.AddressFamily -eq "IPv6"}
#                                      # Verify active IPv6 addresses
# Set-NetIPInterface -InterfaceAlias "VPN Connection Name" -AddressFamily IPv6 -Dhcp Disabled
#                                      # Disable IPv6 on a specific VPN connection (replace with actual VPN name)
# Test-NetConnection -ComputerName vpn.example.com -Port 443
#                                      # Check if the VPN server is reachable
# Get-NetIPConfiguration | Select-Object InterfaceAlias, InterfaceIndex, Dhcp
#                                      # Verify VPN interface settings
# net use * /delete                    # Clear old shared drive mappings (common VPN fix)
# net use X: \\ServerName\SharedFolder /user:Domain\User
#                                      # Remap a shared drive manually after connecting to VPN
# Set-NetIPInterface -InterfaceAlias "VPN Connection Name" -InterfaceMetric 1
#                                      # Prioritize VPN traffic

# 8. Wireless Network & Wi-Fi Diagnostics
# netsh wlan show interfaces           # Display Wi-Fi details, including signal strength
# netsh wlan show networks mode=bssid  # Show available Wi-Fi networks
# Get-NetAdapter -Physical | Where-Object { $_.InterfaceDescription -like "*Wi-Fi*" }
#                                      # Retrieve Wi-Fi network adapter details

# 9. Additional PowerShell Networking Tools
# Test-NetConnection -ComputerName google.com -Port 443
#                                      # Check if HTTPS is accessible
# Get-NetIPConfiguration | Format-List  # Display detailed network configuration
# (Get-NetTCPConnection).State | Sort-Object | Get-Unique
#                                      # Show all unique TCP connection states