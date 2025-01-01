# O365 Automation and AD Management Tools

This repository is a comprehensive showcase of my skills in **automation, Active Directory (AD) management, Exchange, and Azure projects**. It contains a variety of tools, scripts, and templates to highlight my expertise in Microsoft 365, Azure, and PowerShell automation.

---

## **Repository Structure**
The repository is structured for clarity and modularity. Each folder contains scripts and associated README files to guide usage.  
**Note:** Everything within the **Azure-Portfolio** is a work in progress. **Stay tuned for updates!**

```
O365-Automation-and-AD-Management-Tools/
├── Active-Directory/
│   ├── AD-User-Creation/
│   │   ├── AD-Creation-Basic/
│   │   │   ├── ad-creation-basic.ps1
│   │   │   ├── README.md
│   │   ├── AD-Creation-Detailed/
│   │   │   ├── ad-creation-detailed.ps1
│   │   │   ├── README.md
│   │   ├── AD-O365Hybrid-UserCreation/
│   │       ├── ad-o365hybrid-usercreation.ps1
│   │       ├── README.md
│   ├── AD-User-Termination/
│       ├── ad-termination.ps1
│       ├── README.md
├── Exchange/
│   ├── ExchangeOnlineManagement/
│   │   ├── exchangeonlinemanagement.ps1
│   │   ├── README.md
│   ├── HybridMigration/
│   │   ├── sample-migration.csv
│   │   ├── migration-logs/
│   │   │   ├── README.md
│   │   ├── hybrid-migration-script.ps1
│   │   ├── README.md
├── PowerShell-Cheatsheets/
│   ├── Exchange-Cheatsheet/
│   │   ├── exchange-cheatsheet.ps1
│   │   ├── README.md
│   ├── General-Cheatsheet/
│   │   ├── general-cheatsheet.ps1
│   │   ├── README.md
│   ├── Network-Cheatsheet/
│       ├── network-cheatsheet.ps1
│       ├── README.md
├── Azure-Portfolio/
│   ├── AzureAD-UserManagement/
│   ├── Azure-Resource-Deployment/
│   ├── Hybrid-AD-Sync/
│   ├── Azure-Monitoring-Alerts/
│   ├── Azure-S2S-VPN/
│   ├── Azure-DevOps-Pipeline/
│   ├── Azure-Backup-DR/
│   └── Azure-MFA-Reports/
├── .gitignore
├── LICENSE.md
├── README.md
```

---

## **Table of Contents**
- [Active Directory Scripts](#active-directory-scripts)
- [Exchange Scripts](#exchange-scripts)
- [PowerShell Cheatsheets](#powershell-cheatsheets)
- [Azure Portfolio](#azure-portfolio)
- [How to Use](#how-to-use)
- [Contributing](#contributing)
- [License](#license)

---

## **Active Directory Scripts**
This section includes tools for managing AD user accounts, including creation, termination, and hybrid management.

| **Category**                 | **Description**                                           |
|------------------------------|-----------------------------------------------------------|
| [AD-Creation-Basic](./Active-Directory/AD-User-Creation/AD-Creation-Basic)            | Simple user creation scripts with role-based permissions. |
| [AD-Creation-Detailed](./Active-Directory/AD-User-Creation/AD-Creation-Detailed)         | Advanced user creation scripts with detailed workflows.   |
| [AD-O365Hybrid-UserCreation](./Active-Directory/AD-User-Creation/AD-O365Hybrid-UserCreation)  | Hybrid user creation for Azure AD and O365.               |
| [AD-User-Termination](./Active-Directory/AD-User-Termination)         | Secure and automated de-provisioning scripts.            |

---

## **Exchange Scripts**
Scripts to manage Exchange Online, including mailbox migration and hybrid environment setup.

| **Category**              | **Description**                                           |
|---------------------------|-----------------------------------------------------------|
| [ExchangeOnlineManagement](./Exchange/ExchangeOnlineManagement) | Manage Exchange Online settings and operations.           |
| [HybridMigration](./Exchange/HybridMigration)           | Scripts for migrating mailboxes in hybrid environments.   |

---

## **PowerShell Cheatsheets**
Quick reference scripts for common PowerShell tasks.

| **Category**          | **Description**                                    |
|-----------------------|----------------------------------------------------|
| [Exchange-Cheatsheet](./Powershell-Cheatsheets/Exchange-Cheatsheet)   | Commands for managing Exchange Online and Hybrid. |
| [General-Cheatsheet](./Powershell-Cheatsheets/General-Cheatsheet)     | General-purpose PowerShell commands.               |
| [Network-Cheatsheet](./Powershell-Cheatsheets/Network-Cheatsheet)     | Networking-related PowerShell commands.            |

---

## **Azure Portfolio**
The **Azure-Portfolio** directory highlights my Azure-based projects, which focus on automation, CI/CD, and infrastructure management using Azure DevOps, PowerShell, ARM templates, and Azure CLI.  
**Note:** This section is actively being developed. **Stay tuned for updates!**

| **Project**           | **Description**                          | **Technologies**    |
|---------------------|-------------------------------------------|---------------------|
| [Azure AD User Management](./Azure-Portfolio/AzureAD-UserManagement) | Automates user creation, role assignments, and MFA enablement. | PowerShell, Azure AD |
| [Azure Resource Deployment](./Azure-Portfolio/Azure-Resource-Deployment) | Deploys Azure resources with ARM templates and PowerShell scripts. | ARM, PowerShell |
| [Hybrid AD Sync](./Azure-Portfolio/Hybrid-AD-Sync) | Syncs on-prem AD users to Azure AD for hybrid environments. | PowerShell, Azure AD Module |
| [Azure Monitoring & Alerts](./Azure-Portfolio/Azure-Monitoring-Alerts) | Tracks resource health and sends alerts for CPU, memory, and disk usage. | PowerShell, Logic Apps |
| [Azure Site-to-Site VPN](./Azure-Portfolio/Azure-S2S-VPN) | Automates deployment of site-to-site VPN on Azure. | PowerShell, Azure CLI |
| [Azure DevOps Pipeline](./Azure-Portfolio/Azure-DevOps-Pipeline) | YAML pipelines for PowerShell CI/CD. | Azure DevOps, YAML Pipelines |
| [Azure Backup & DR](./Azure-Portfolio/Azure-Backup-DR) | Automated scripts for backup and disaster recovery. | PowerShell, Azure Backup |
| [Azure MFA Reports](./Azure-Portfolio/Azure-MFA-Reports) | Generates MFA status reports for users. | PowerShell, Azure AD |

---

## **How to Use**
To use any of the tools or projects in this repository:
1. **Clone the Repository**:  
   ```bash
   git clone https://github.com/yourusername/O365-Automation-and-AD-Management-Tools.git
   cd O365-Automation-and-AD-Management-Tools
   ```

2. **Navigate to the Specific Folder**:  
   Each folder contains usage instructions in the **README.md**.  

3. **Run PowerShell Scripts**:
   Execute scripts directly from PowerShell with administrative privileges:
   ```powershell
   ./Active-Directory/AD-User-Creation/AD-Creation-Basic/ad-creation-basic.ps1
   ```

---

## **Best Practices**
- **Test in a Non-Production Environment**: Avoid running scripts directly in production environments.  
- **Use `-WhatIf`**: Run PowerShell scripts with `-WhatIf` to preview the impact.  
- **Log Migrations**: Track Exchange migrations using the **migration-logs** folder.  
- **Security-First Approach**: Never hardcode sensitive data in scripts. Use the **.gitignore** to protect secrets.  

---

## **License**
This project is licensed under the **MIT License**, allowing you to use, modify, and distribute the scripts as long as proper credit is given. See [LICENSE.md](LICENSE.md) for more details.  

---

## **Contributing**
Contributions are welcome. If you'd like to suggest changes, submit an issue or pull request.  

---

## **Contact**
If you'd like to discuss my projects or have questions about the scripts, connect with me:  
- [LinkedIn Profile](https://www.linkedin.com/in/helen-najar)