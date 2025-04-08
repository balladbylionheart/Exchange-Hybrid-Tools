# MFA Status Report Script

This folder contains:
- **MFA-Status.ps1**: The PowerShell script for generating MFA status reports.
- **Sample-MFA-Status-Report.csv**: Sample output showing the expected results.

---

## Usage

### **1. Prerequisites**
- Ensure the **AzureAD** and **MSOnline** modules are installed:
  ```powershell
  Install-Module -Name AzureAD
  Install-Module -Name MSOnline
  ```

### **2. Run the Script**
```powershell
.\MFA-Status.ps1
```

### **3. Sample Output**
The script generates a CSV file (`MFA-Status-Report.csv`) with the following structure:
- `UserPrincipalName`: The email address of the user.
- `MFAEnabled`: Indicates whether MFA is enabled or disabled.

Example:
| UserPrincipalName       | MFAEnabled |
|--------------------------|------------|
| alex.doe@domain.com      | Enabled    |
| jack.smith@domain.com    | Disabled   |

---

## Disclaimer

This script is provided as-is. Test it thoroughly in a non-production environment before using it in production. Always ensure you have the necessary backups and understand the implications of modifying user accounts and mailboxes in your domain and Exchange Online environment.

## License
This project is licensed under the [MIT License](https://github.com/balladbydragons/Powershell-Scripts/blob/main/LICENSE.md).
