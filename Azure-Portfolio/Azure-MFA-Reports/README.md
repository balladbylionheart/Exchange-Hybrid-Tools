# Azure MFA Reports

This directory contains PowerShell scripts to generate reports for:
1. **MFA Status**: Provides an overview of MFA-enabled and disabled users in Azure AD.

---

## Subfolders

### **MFA-Status/**
Contains the script and sample output for generating MFA status reports:
- `MFA-Status.ps1`: The script for generating the report.
- `Sample-MFA-Status-Report.csv`: Sample output showing the expected results.
- `README.md`: Documentation for using the script.

---

## Requirements
- **PowerShell 7.x** or later.
- **AzureAD Module**: Install using:
  ```powershell
  Install-Module -Name AzureAD
  ```
- **MSOnline Module** (for MFA reporting): Install using:
  ```powershell
  Install-Module -Name MSOnline
  ```

---

## Disclaimer

This script is provided as-is. Test it thoroughly in a non-production environment before using it in production. Always ensure you have the necessary backups and understand the implications of modifying user accounts and MFA settings in your Azure AD environment.

## License
This project is licensed under the [MIT License](https://github.com/balladbydragons/Powershell-Scripts/blob/main/LICENSE.md).
