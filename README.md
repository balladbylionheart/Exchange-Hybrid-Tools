# O365 Automation and AD Management Tools

This repository is a comprehensive showcase of my skills in **automation, Active Directory (AD) management, Exchange, and Azure projects**. It contains a variety of tools, scripts, and templates to highlight my expertise in Microsoft 365, Azure, and PowerShell automation.

---

## **Repository Structure**
The repository is structured for clarity and modularity. Each folder contains scripts and associated README files to guide usage.  
**Note:** Everything within the **Azure-Portfolio** is a work in progress. **Stay tuned for updates!**

```
O365-Automation-and-AD-Management-Tools/
├── PowerShell-Scripts/
│   ├── AD-Creation/
│   │   ├── AD-Creation-Basic/
│   │   ├── AD-Creation-Detailed/
│   │   └── AD-O365Hybrid-UserCreation/
│   ├── AD-Termination/
│   ├── Exchange-Scripts/
│   │   ├── ExchangeOnlineManagement/
│   │   └── HybridMigration/
│   └── PS-Cheatsheet/
│       ├── Exchange-Cheatsheet/
│       ├── Network-Cheatsheet/
│       └── General-Cheatsheet/
├── Azure-Portfolio/
│   ├── AzureAD-UserManagement/
│   ├── Azure-Resource-Deployment/
│   ├── Hybrid-AD-Sync/
│   ├── Azure-Monitoring-Alerts/
│   ├── Azure-S2S-VPN/
│   ├── Azure-DevOps-Pipeline/
│   ├── Azure-Backup-DR/
│   └── Azure-MFA-Reports/
├── .vscode/
├── .gitignore
├── LICENSE.md
├── README.md
```

---

## **Table of Contents**
- [PowerShell Scripts](#powershell-scripts)
- [Azure Portfolio](#azure-portfolio)
- [How to Use](#how-to-use)
- [Contributing](#contributing)
- [License](#license)

---

## **PowerShell Scripts**
The **PowerShell-Scripts** directory contains automation tools and resources for managing AD creation, Exchange scripts, and PowerShell cheatsheets.

| **Category**       | **Description**                         |
|-------------------|-----------------------------------------|
| [AD-Creation](./PowerShell-Scripts/AD-Creation)  | Automated tools for creating AD accounts, including O365 hybrid user creation. |
| [AD-Termination](./PowerShell-Scripts/AD-Termination) | Scripts for user de-provisioning and AD account termination. |
| [Exchange-Scripts](./PowerShell-Scripts/Exchange-Scripts) | Scripts to automate Exchange Online Management and Hybrid Migrations. |
| [PS-Cheatsheet](./PowerShell-Scripts/PS-Cheatsheet) | Handy PowerShell cheatsheets for Exchange, Networks, and general-purpose commands. |

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
   Run scripts directly from PowerShell with administrative privileges:  
   ```powershell
   ./AD-Creation/AD-Creation-Basic/AD-Creation-Basic.ps1
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