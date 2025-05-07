# Exchange Hybrid Tools  
By Helen Najar, Lionheart | Ballad by Dragons

This repository contains PowerShell scripts tailored for managing **hybrid Exchange environments**—including onboarding, offboarding, Exchange Online permissions, and full mailbox migrations. These tools reflect real-world enterprise use and streamline both daily admin tasks and complex migration workflows.

---

## 📁 Repository Structure

| Folder                          | Purpose                                                                 |
|----------------------------------|-------------------------------------------------------------------------|
| `AD-O365Hybrid-UserCreation`     | Create on-prem AD accounts synced with Exchange Online (Hybrid-ready). |
| `AD-O365Hybrid-UserTermination` | Offboard hybrid users cleanly across AD and Exchange.                  |
| `ExchangeOnlineManagement`      | Manage permissions, forwarding, and shared mailboxes in EXO.           |
| `HybridMigration`               | Automate hybrid Exchange migrations via CSV.                            |
| `migration-logs/`               | Sample logs and templates used during migration tracking.              |

---

## 🔧 Scripts Overview

### `AD-O365Hybrid-UserCreation`
Provision a new Active Directory user and remote mailbox for hybrid Exchange. Preps the user for Azure AD sync and Exchange Online activation.

### `AD-O365Hybrid-UserTermination`
Offboard users cleanly from both AD and Exchange. Disables the AD account, removes licensing (if applicable), and logs the action.

### `ExchangeOnlineManagement.ps1`
Interactive script for:
- Granting or removing mailbox permissions (FullAccess, SendAs, SendOnBehalf).
- Setting internal or external forwarding.
- Automating Out-of-Office replies.
- Managing distribution group membership.
- Creating and configuring shared mailboxes.

### `HybridMigration.ps1`
End-to-end hybrid mailbox migration tool. Key features:
- Connects to both EXO and on-prem environments.
- Starts and completes batches automatically.
- Supports CSV input and generates logs in `migration-logs/`.

---

## ▶️ How to Run

1. Open PowerShell as Administrator.
2. Navigate to the desired folder.
3. Run the script:
```powershell
powershell -ExecutionPolicy Bypass -File .\ScriptName.ps1
````

---

## ✅ Prerequisites

* Install modules:

```powershell
Install-Module ExchangeOnlineManagement
Install-Module MSOnline
```

* Hybrid Configuration Wizard must be run beforehand.
* Ensure global admin rights in Office 365 and Exchange Admin rights on-prem.

---

## 🧠 Tips & Troubleshooting

| Issue                    | Cause                          | Fix                                     |
| ------------------------ | ------------------------------ | --------------------------------------- |
| MFA login failure        | Account requires interaction   | Use secure token login / app password   |
| Script won’t execute     | Execution policy is too strict | `Set-ExecutionPolicy RemoteSigned`      |
| Migration batch stuck    | Bad CSV or endpoint mismatch   | Double-check formatting and permissions |
| User missing in Exchange | AD sync delay or SMTP mismatch | Force AAD sync, confirm proxy addresses |

---

## ⚠️ Security Notes

* Never hardcode credentials. Use secure prompts or `Get-Credential`.
* This repo includes `.gitignore` to exclude `.csv`, `.log`, and secrets.
* Run scripts in a test tenant or lab before deploying in production.

---

## 📜 License

This project is licensed under the [MIT License](https://github.com/balladbydragons/Exchange-Hybrid-Tools/blob/main/LICENSE.md).

Created and maintained by Helen Najar | Lionheart | [BalladByDragons.org](https://www.balladbydragons.org)

## 📬 Contact

For inquiries, feedback, or collaboration opportunities:

- **LinkedIn**: [Helen Najar](https://www.linkedin.com/in/helen-najar)  
- **Website**: [BalladByDragons.org/contact](https://www.balladbydragons.org/contact)  
- **GitHub**: [@balladbydragons](https://github.com/balladbydragons)  

Whether you're a fellow IT specialist, a seeker of poetic code, or someone in need of Exchange or automation solutions—I'm open to connect.
