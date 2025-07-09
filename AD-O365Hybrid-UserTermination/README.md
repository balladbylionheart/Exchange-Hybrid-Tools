# **AD O365 Hybrid User Termination**

By Helen Najar, Lionheart | Ballad by Lionheart

## **Overview**

This PowerShell script simplifies the termination process for user accounts in a hybrid Active Directory (AD) and Exchange Online environment.
A graceful script forged to ease the final steps of user offboarding, preserving order in both cloud and realm.

---

## **Key Functions**

* Validates user existence in AD.
* Resets the user’s password.
* Converts the mailbox to a shared mailbox and hides it from address lists.
* Clears calendar events organized by the user.
* Removes all AD group memberships (except the primary group).
* Updates the user’s AD description with termination details.
* Disables the AD account and moves it to a designated “Disabled” Organizational Unit (OU).
* Prompts for and validates a ticket number (e.g., `REQ1234567`) to document the action.

---

## ⚠️ **Customization Required**

The following placeholders **must be updated** for your environment:

* `skystar.com` → Replace with your organization’s email domain
* `Disabled Sync, OU=Disabled Objects` → Match your actual AD structure

📌 If these are not updated, the script may not work correctly.

---

## **Prerequisites**

### **Active Directory Module**

```powershell
Import-Module ActiveDirectory
```

### **Exchange Online Connectivity**

```powershell
Connect-ExchangeOnline
```

### **Administrative Permissions**

Ensure you have permissions in:

* Active Directory
* Exchange Online

---

## **Usage**

### **1. Open a PowerShell Session**

Use Exchange Management Shell or a session with Exchange Online module loaded.

### **2. Navigate to Script Location**

```powershell
cd C:\Path\To\Your\Script\
```

### **3. Allow Script Execution (if needed)**

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### **4. Run the Script**

```powershell
.\AD-O365Hybrid-Termination.ps1
```

### **5. Follow the Prompts**

* Enter the username (LAN ID)
* Enter a valid ticket number (e.g., `REQ1234567`)
* Review and confirm screenshot prompts

---

## **Additional Notes**

### **Ticket Number Format**

The script enforces the following format:

* **Prefix**: `REQ`
* **Length**: Exactly 10 characters (e.g., `REQ1234567`)
* **Digits**: Must be followed by 7 numeric digits

### **Username Validation**

Ensures user exists in AD and contains no invalid characters.

### **Hidden Shared Mailbox**

Mailbox is converted and hidden post-termination.

### **Removing Group Memberships**

All but the primary group are removed.

### **Error Handling**

Invalid input prompts for correction.

---

## **Disclaimer**

This script is provided as-is.
Test thoroughly in non-production environments. Ensure backups and proper authorizations before use.

---

## **License**

This project is licensed under the [MIT License](https://github.com/balladbylionheart/Exchange-Hybrid-Tools/blob/main/LICENSE.md).

Created and maintained by Helen Najar | Lionheart | [balladbylionheart.com](https://www.balladbylionheart.com)
---

## **Contact**

For questions or suggestions, visit the
[Ballad by Lionheart repository homepage](https://github.com/balladbylionheart/Exchange-Hybrid-Tools)