# Import Azure AD module
Import-Module AzureAD

# Connect to Azure AD
Write-Host "Connecting to Azure AD..."
Connect-AzureAD

# CSV file location
$CSVFile = ".\sample-users.csv"

# Check if CSV exists
if (-Not (Test-Path -Path $CSVFile)) {
    Write-Error "CSV file not found: $CSVFile"
    exit
}

# Import CSV file
$Users = Import-Csv -Path $CSVFile

# Iterate through each user in the CSV
foreach ($User in $Users) {
    try {
        # Create new Azure AD user
        Write-Host "Creating user: $($User.DisplayName)"
        New-AzureADUser -UserPrincipalName $User.UserPrincipalName `
                        -DisplayName $User.DisplayName `
                        -PasswordProfile (New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile -Property @{Password = $User.Password}) `
                        -MailNickName $User.MailNickName `
                        -AccountEnabled $true

        # Optional: Add user to groups
        if ($User.Group) {
            Write-Host "Adding $($User.DisplayName) to group $($User.Group)"
            $Group = Get-AzureADGroup -Filter "DisplayName eq '$($User.Group)'"
            Add-AzureADGroupMember -ObjectId $Group.ObjectId -RefObjectId (Get-AzureADUser -Filter "UserPrincipalName eq '$($User.UserPrincipalName)'").ObjectId
        }

        Write-Host "User created successfully: $($User.DisplayName)"
    } catch {
        Write-Error "Failed to create user: $($User.DisplayName). Error: $_"
    }
}
