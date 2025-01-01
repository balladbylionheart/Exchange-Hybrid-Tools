# Import AzureAD module
Import-Module AzureAD

# Connect to Azure AD
Write-Host "Connecting to Azure AD..."
Connect-AzureAD

# Get all users
Write-Host "Fetching Azure AD users..."
$Users = Get-AzureADUser -All $true

# Initialize an array to hold MFA status information
$MFAStatusReport = @()

# Iterate through each user
foreach ($User in $Users) {
    Write-Host "Checking MFA status for: $($User.UserPrincipalName)"

    # Get the MFA details for the user
    $MFADetails = Get-MsolUser -UserPrincipalName $User.UserPrincipalName | Select-Object UserPrincipalName,StrongAuthenticationMethods

    # Check if MFA is enabled
    $MFAEnabled = $null -ne $MFADetails.StrongAuthenticationMethods -and $MFADetails.StrongAuthenticationMethods.Count -gt 0

    # Add the user's MFA status to the report
    $MFAStatusReport += [PSCustomObject]@{
        UserPrincipalName = $User.UserPrincipalName
        MFAEnabled        = if ($MFAEnabled) { "Enabled" } else { "Disabled" }
    }
}

# Export the report to a CSV file
$OutputPath = ".\Azure-Portfolio\Azure-MFA-Reports\MFA-Status-Report.csv"
$MFAStatusReport | Export-Csv -Path $OutputPath -NoTypeInformation -Force

Write-Host "MFA status report generated: $OutputPath"