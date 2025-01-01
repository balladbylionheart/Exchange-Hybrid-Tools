# Import Az module
Import-Module Az

# Connect to Azure account
Write-Host "Connecting to Azure account..."
Connect-AzAccount

# Get all Conditional Access policies
Write-Host "Fetching Conditional Access policies..."
$Policies = Get-AzConditionalAccessPolicy

# Initialize an array to hold policy details
$PolicyDetails = @()

# Iterate through each policy
foreach ($Policy in $Policies) {
    Write-Host "Processing policy: $($Policy.DisplayName)"

    # Get details about the policy
    $PolicyDetails += [PSCustomObject]@{
        PolicyName     = $Policy.DisplayName
        State          = $Policy.State
        AssignedUsers  = ($Policy.Conditions.Users.IncludeUsers -join ", ")
        AssignedGroups = ($Policy.Conditions.Users.IncludeGroups -join ", ")
        Conditions     = ($Policy.Conditions.Applications.IncludeApplications -join ", ")
    }
}

# Export the policy details to a CSV file
$OutputPath = ".\Conditional-Access-Policy-Report.csv"
$PolicyDetails | Export-Csv -Path $OutputPath -NoTypeInformation -Force

Write-Host "Conditional Access policy report generated: $OutputPath"