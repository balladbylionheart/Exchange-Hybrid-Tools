<#
    Creation by By Helen Najar, Lionheart | Ballad by Dragons
#>

# Import Active Directory Module
Import-Module ActiveDirectory
Add-Type -Assembly 'System.Web'

Write-Host " "
Write-Host "========================================================" -ForegroundColor Yellow
Write-Host "    Welcome to the Termination in Active Directory     " -ForegroundColor Green
Write-Host "========================================================" -ForegroundColor Yellow
Write-Host "            SkyStar Environment Script Launched        " -ForegroundColor Green
Write-Host "========================================================" -ForegroundColor Yellow
Write-Host " "

# Validate User Input & AD Lookup
# -------------------------------
do {
    # Prompt for the username
    $username = Read-Host "Enter User's LAN ID"

    # Validate input: Check for invalid characters and empty input
    if ([string]::IsNullOrWhiteSpace($username) -or $username -match '[$!~#%&*{}\\:<>?/|+"@_]') {
        Write-Warning "Invalid input detected. Please enter a valid LAN ID."
        continue
    }

    # Retrieve user from Active Directory
    $user = Get-ADUser -Filter { SamAccountName -eq $username } -Properties SamAccountName, MemberOf, Description

    if (-not $user) {
        Write-Warning "User '$username' not found in Active Directory. Please double-check the username and try again."
    }

} until ($user)  # Loop until a valid AD user is found

# Extract verified username
$username = $user.SamAccountName
$date = Get-Date -DisplayHint Date


# Validate Ticket Number Format
# -------------------------------
do {
    $ticketnumber = Read-Host "Enter Ticket Number"
    $ticketnumber = $ticketnumber.ToUpper()

    # Validate format: 'REQ' followed by 7 digits (10 characters)
    if ($ticketnumber -match '^REQ\d{7}$') {
        break
    } else {
        Write-Warning "Invalid input. Format must be 'REQ' followed by 7 digits (e.g., REQ1234567)."
    }

} while ($true)

$FullDesc = "Disabled on $date per $ticketnumber"


# Generate Secure Password
# -------------------------------
function GeneratePassword([int32]$PasswordLength = 22) {
    $charSet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*"
    -join (1..$PasswordLength | ForEach-Object { Get-Random -InputObject $charSet.ToCharArray() })
}

$passW = GeneratePassword | ConvertTo-SecureString -AsPlainText -Force

Write-Host " "
Write-Host "Gathering MemberOf..."
$user.MemberOf | Get-ADGroup | Select-Object Name

Write-Host "Ensuring 'Domain Users' is the Primary AD Group..."
$group = Get-ADGroup "Domain Users" -Properties primaryGroupToken
Set-ADUser -Identity $username -Replace @{primaryGroupID=$group.primaryGroupToken}
Write-Host "'Domain Users' set as the Primary Group - COMPLETED"

Write-Host " "
Write-Host "Setting New Password..."
Set-ADAccountPassword -Identity $username -Reset -NewPassword $passW
Write-Host "New Password Set - COMPLETED"


# Exchange & O365 Updates
# -------------------------------
$Email = "$username@skystar.com"
Write-Host " "
Write-Host "Converting to Shared Mailbox on Hybrid..."
Set-RemoteMailbox -Identity $Email -Type Shared
Write-Host "Converted to Shared Mailbox - COMPLETED"

Write-Host "Hiding From Address Lists..."
Set-RemoteMailbox -Identity $Email -HiddenFromAddressListsEnabled $true
Write-Host "Hidden from Address Lists - COMPLETED"

Write-Host "Syncing to O365..."
Connect-ExchangeOnline
Set-Mailbox -Identity $Email -Type Shared
Write-Host "Syncing to O365 - COMPLETED"

Write-Host "Clearing Calendar Events..."
Remove-CalendarEvents -Identity $Email -CancelOrganizedMeetings -QueryWindowInDays 120
Write-Host "Calendar Events Cleared - COMPLETED"


# Active Directory Cleanup
# -------------------------------
Write-Host " "
Write-Host "Removing Group Memberships..."
$user.MemberOf | ForEach-Object { Remove-ADGroupMember -Identity $_ -Members $username -Confirm:$false }
Write-Host "Group Memberships Removed - COMPLETED"

Write-Host "Updating Description Field..."
$UpdatedDesc = "$FullDesc - $($user.Description)"
Set-ADUser -Identity $username -Description $UpdatedDesc
Write-Host "Description Field Updated - COMPLETED"

Write-Host "Disabling Account..."
Set-ADUser -Identity $username -Enabled $false
Write-Host "Account Disabled - COMPLETED"

Write-Host "Moving account to Disabled Mailbox Sync OU..."
Move-ADObject -Identity $user.DistinguishedName -TargetPath 'OU=Disabled Sync,OU=Disabled Objects,DC=skystar,DC=com'
Write-Host "Moved to Disabled Mailbox Sync OU - COMPLETED"


# Final Prompt
# -------------------------------
Write-Host " "
Write-Host "Please take the proper screenshot or copy the entire process into the ticket."
do {
    $answer = Read-Host "Press 'y' for Yes or 'n' for No"
} until ($answer -match '^[YyNn]$')

if ($answer -match '^[Nn]$') {
    Write-Host "Exiting script..." -ForegroundColor Cyan
}