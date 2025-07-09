# **AD O365 Hybrid User Creation**

By Helen Najar, Lionheart | Ballad by Lionheart

## **Overview**

`AD-O365Hybrid-UserCreation.ps1` is a PowerShell script forged for hybrid environments—where on-prem Active Directory meets the cloud realm of Exchange Online.
It enables the streamlined creation of new user accounts, remote mailboxes, shared inboxes, and distribution groups—crafted with clarity and built for scale.

**Note:** All sample domain references (`skystar.com`, `STAR`, etc.) are placeholders. Update them to match your real-world environment before using.

---

## **Key Features**

* **🧍 AD User Creation** – For both employees and contractors.
* **☁️ Hybrid Mailbox Enablement** – Seamlessly integrates users with Exchange Online.
* **👥 Template-Based Group Assignment** – Copies memberships from pre-defined templates.
* **📫 Shared Mailbox Creation** – With ticket validation and address book hiding.
* **📣 Distribution Group Creation** – With automated setup and ownership assignment.

---

## **Prerequisites**

* **Environment**: Run this script inside the **Exchange Management Shell** on a hybrid-configured server.
* **Modules**: PowerShell 5.1+, Active Directory module, and Exchange Management tools.
* **Permissions**: Ensure you have admin rights for AD and Exchange.
* **Customization**: Replace all placeholder domains, template accounts, and OU paths as needed.

---

## **Usage**

1. **Launch the Exchange Management Shell as Administrator**

2. **Navigate to the Script Directory**

   ```powershell
   cd C:\Path\To\Your\Script\
   ```

3. **Set Execution Policy (if needed)**

   ```powershell
   Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```

4. **Run the Script**

   ```powershell
   .\AD-O365Hybrid-UserCreation.ps1
   ```

5. **Follow the Prompts**
   Select your task:

   * Create Star Employee
   * Contractor Account
   * Shared Mailbox
   * Distribution Group
     Then enter user details, manager name, department, and a REQ ticket if required.

6. **Confirm and Capture Screenshots**
   The script will display final results—ready for audit or documentation.

---

## **Example Workflows**

### ✨ Create a Star Employee

Option `1`: Prompts for user details and automatically:

* Creates the AD user
* Enables remote mailbox
* Assigns default groups
* Sets a description with the REQ ticket

### 📨 Create a Shared Mailbox

Option `3`: Requests REQ number and mailbox name, then:

* Creates the shared mailbox
* Hides it from address lists
* Tags the AD description for tracking

---

## **Notes & Validation**

* **🎟 Ticket Format**: Must be in the format `REQ1234567`.
* **🆔 Username Conflicts**: If a username exists, the script prompts to append a digit and continue.
* **📂 Templates**: Ensure template users (`!STAR_Employee`, etc.) and O365 groups exist in your AD.

---

## **Disclaimer**

This script is provided as-is. Always test in a development or lab environment before using in production.
Proper backups, naming policies, and organizational approval are strongly recommended.

---

## **License**

Licensed under the [MIT License](https://github.com/balladbylionheart/Exchange-Hybrid-Tools/blob/main/LICENSE.md)

Created and maintained by Helen Najar | Lionheart | [balladbylionheart.com](https://www.balladbylionheart.com)

---

## **Contact**
For questions, enhancements, or feedback:
📬 [Main README](https://github.com/balladbylionheart/Exchange-Hybrid-Tools/blob/main/README.md)