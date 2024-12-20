# PowerShell Scripts

The **PowerShell-Scripts** directory contains a collection of PowerShell scripts designed to streamline and automate key IT administrative tasks. This includes **Active Directory (AD) user management**, **Exchange management**, and **PowerShell cheatsheets** for quick reference and troubleshooting.  

These scripts are written with a focus on:  
- **Automation and Efficiency**: Reduce manual effort through automated workflows.  
- **Security and Compliance**: Ensure scripts follow industry best practices and security-first principles.  
- **Reusability and Modularity**: Designed to be reusable and modifiable for future needs.  

---

## **Directory Structure**
Here’s an overview of the subdirectories and their purpose:  

```
PowerShell-Scripts/
├── AD-Creation/
│   ├── AD-Creation-Basic/
│   │   ├── AD-Creation-Basic.ps1
│   │   └── README.md
│   ├── AD-Creation-Detailed/
│   │   ├── AD-Creation-Detailed.ps1
│   │   └── README.md
│   ├── AD-O365Hybrid-UserCreation/
│   │   ├── AD-O365Hybrid-UserCreation.ps1
│   │   └── README.md
│   └── README.md (Describes AD-Creation subdirectory)
├── AD-Termination/
│   ├── AD-Termination.ps1
│   └── README.md (Describes AD-Termination script)
├── Exchange-Scripts/
│   ├── ExchangeOnlineManagement/
│   │   ├── ExchangeOnlineManagement.ps1
│   │   └── README.md
│   └── HybridMigration/
│       ├── migration-logs/ (logs folder with .gitkeep)
│       ├── sample-migration.csv (example input file for migration)
│       ├── HybridMigration.ps1 (PowerShell script for Exchange hybrid migrations)
│       └── README.md (Describes Hybrid Migration subdirectory)
├── PS-Cheatsheet/
│   ├── Exchange-Cheatsheet/
│   │   ├── Exchange-Cheatsheet.ps1
│   │   └── README.md
│   ├── Network-Cheatsheet/
│   │   ├── network-Cheatsheet.ps1
│   │   └── README.md
│   └── General-Cheatsheet/
│       ├── general-cheatsheet.ps1
│       └── README.md
└── README.md (This file)
```

---

## **Directory Breakdown**
Here’s a quick breakdown of what’s in each folder and why it matters.

### **1️⃣ AD-Creation**
This directory contains scripts for **Active Directory user creation**. It includes scripts for:  
- **Basic AD User Creation**: Simple user creation with basic properties.  
- **Detailed AD User Creation**: More robust version with advanced properties, input validation, and enhanced logging.  
- **O365 Hybrid User Creation**: Handles **hybrid user creation** for environments where AD syncs with Office 365.  

**Subdirectories and Key Files**  
| **File/Folder**              | **Purpose**                                              |
|----------------------------|---------------------------------------------------------|
| **AD-Creation-Basic.ps1**    | Simple user creation for on-prem AD.                      |
| **AD-Creation-Detailed.ps1** | Advanced AD user creation with validation and logging.   |
| **AD-O365Hybrid-UserCreation.ps1** | Hybrid AD & O365 user onboarding script.           |
| **README.md**                 | Documentation for AD-Creation scripts.                   |

---

### **2️⃣ AD-Termination**
This directory handles the **termination of user accounts** in AD. This includes disabling accounts, removing group memberships, and optionally moving user objects to a specific "Terminated Users" OU for auditing.  

**Subdirectories and Key Files**  
| **File/Folder**              | **Purpose**                                              |
|----------------------------|---------------------------------------------------------|
| **AD-Termination.ps1**       | Automates user deactivation and account cleanup.         |
| **README.md**                | Documentation for the AD-Termination script.             |

---

### **3️⃣ Exchange-Scripts**
This directory contains **Exchange management scripts** for both **Exchange Online** and **Hybrid Exchange environments**. The scripts support Exchange mailbox creation, permissions, and hybrid migrations.

**Subdirectories and Key Files**  
| **File/Folder**               | **Purpose**                                              |
|-----------------------------|---------------------------------------------------------|
| **ExchangeOnlineManagement.ps1** | Manages Exchange Online mailboxes.                 |
| **HybridMigration.ps1**        | Automates hybrid migration from on-prem to Office 365. |
| **migration-logs/**            | Contains migration logs for tracking batch processes.  |
| **sample-migration.csv**       | Sample CSV file for input data.                        |
| **README.md**                  | Documentation for Exchange-Scripts directory.         |

---

### **4️⃣ PS-Cheatsheet**
This directory contains **PowerShell cheatsheets** for quick reference. The scripts cover frequently used commands for Exchange, networking, and general system administration.

**Subdirectories and Key Files**  
| **File/Folder**                | **Purpose**                                           |
|-------------------------------|------------------------------------------------------|
| **Exchange-Cheatsheet.ps1**    | Commands specific to Exchange Online.                |
| **Network-Cheatsheet.ps1**     | Commands for network diagnostics and utilities.     |
| **General-Cheatsheet.ps1**     | General PowerShell tips and frequently used snippets.|
| **README.md**                  | Documentation for PS-Cheatsheet directory.           |

---

## **How to Use**
1. **Clone the Repository**:  
   ```bash
   git clone https://github.com/yourusername/O365-Automation-and-AD-Management-Tools.git
   cd O365-Automation-and-AD-Management-Tools/PowerShell-Scripts
   ```

2. **Navigate to the Folder**:  
   Each folder has a **README.md** that explains how to run the scripts, dependencies, and usage.  

3. **Run the PowerShell Scripts**:  
   Example of how to run the AD-Creation script:  
   ```powershell
   ./AD-Creation/AD-Creation-Basic/AD-Creation-Basic.ps1
   ```

---

## **Security Best Practices**
1. **Use `-WhatIf`**: Use PowerShell's **`-WhatIf`** switch to preview the changes before applying them.  
2. **Test in a Safe Environment**: Always test scripts in a non-production environment.  
3. **Avoid Hardcoding**: Avoid hardcoding sensitive data. Use secure input prompts where possible.  
4. **Track Logs**: Review logs (especially **migration-logs**) to ensure successful execution.  

---

## **Contributing**
Contributions are welcome! If you’d like to improve the scripts or documentation, submit a pull request.  
Please adhere to the following guidelines:  
- **Follow the Existing Folder Structure**: New scripts should be placed in the appropriate subdirectory.  
- **Document Your Changes**: Add comments and explanations for any new scripts.  

---

## **Requirements**
To use these PowerShell scripts, you'll need:  
- **PowerShell 7.x or above**  
- **Active Directory Module** (for AD-related scripts)  
- **ExchangeOnlineManagement Module** (for Exchange scripts)  

Install required modules:  
```powershell
Install-Module -Name AzureAD
Install-Module -Name ExchangeOnlineManagement
```

---

## **Contact**
If you'd like to discuss my PowerShell scripts or propose contributions, feel free to connect with me on:  
- **[LinkedIn](https://www.linkedin.com/in/helen-najar)**  