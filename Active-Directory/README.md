# PowerShell Scripts

The **Active Directory** directory contains a collection of PowerShell scripts designed to automate key IT administrative tasks. This includes **Active Directory (AD) user management** and **O365 Hybrid management**.

These scripts are written with a focus on:  
- **Automation and Efficiency**: Reduce manual effort through automated workflows.  
- **Security and Compliance**: Ensure scripts follow industry best practices and security-first principles.  
- **Reusability and Modularity**: Designed to be reusable and modifiable for future needs.  

---

## **Directory Structure**
Here’s an overview of the subdirectories and their purpose:  

```
Active-Directory/
├── AD-User-Creation/
│   ├── AD-Creation-Basic/
│   │   ├── ad-creation-basic.ps1
│   │   ├── README.md
│   ├── AD-Creation-Detailed/
│   │   ├── ad-creation-detailed.ps1
│   │   ├── README.md
│   ├── AD-O365Hybrid-UserCreation/
│       ├── ad-o365hybrid-usercreation.ps1
│       ├── README.md
├── AD-User-Termination/
│   ├── ad-termination.ps1
│   ├── README.md
└── README.md
```

---

## **Directory Breakdown**
Here’s a quick breakdown of what’s in each folder and why it matters.

### **1️⃣ AD-User-Creation**
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
| **README.md**                 | Documentation for AD-User-Creation scripts.              |

---

### **2️⃣ AD-User-Termination**
This directory handles the **termination of user accounts** in AD. This includes disabling accounts, removing group memberships, and optionally moving user objects to a specific "Terminated Users" OU for auditing.  

**Subdirectories and Key Files**  
| **File/Folder**              | **Purpose**                                              |
|----------------------------|---------------------------------------------------------|
| **ad-termination.ps1**       | Automates user deactivation and account cleanup.         |
| **README.md**                | Documentation for the AD-Termination script.             |

---

## **How to Use**
1. **Clone the Repository**:  
   ```bash
   git clone https://github.com/Abyloon/O365-Automation-and-AD-Management-Tools.git
   cd O365-Automation-and-AD-Management-Tools/Active-Directory
   ```

2. **Navigate to the Folder**:  
   Each folder has a **README.md** that explains how to run the scripts, dependencies, and usage.  

3. **Run the PowerShell Scripts**:  
   Example of how to run the AD-Creation script:  
   ```powershell
   ./AD-User-Creation/AD-Creation-Basic/ad-creation-basic.ps1
   ```

---

## **Security Best Practices**
1. **Use `-WhatIf`**: Use PowerShell's **`-WhatIf`** switch to preview the changes before applying them.  
2. **Test in a Safe Environment**: Always test scripts in a non-production environment.  
3. **Avoid Hardcoding**: Avoid hardcoding sensitive data. Use secure input prompts where possible.  
4. **Track Logs**: Review logs (if implemented) to ensure successful execution.  

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
- **ExchangeOnlineManagement Module** (for hybrid-related scripts)  

Install required modules:  
```powershell
Install-Module -Name AzureAD
Install-Module -Name ExchangeOnlineManagement
```

---

## **Contact**
If you'd like to discuss my PowerShell scripts or propose contributions, feel free to connect with me on:  
- **[LinkedIn](https://www.linkedin.com/in/helen-najar)**
