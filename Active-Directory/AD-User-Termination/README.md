Here’s the refined **README** without emojis, keeping it professional and clear:

---

# **Active Directory Termination Script**

## **Overview**

This PowerShell script simplifies the termination process for user accounts in a hybrid Active Directory (AD) and Exchange Online environment.

### **Key Functions:**
- Validates user existence in AD.
- Resets the user’s password.
- Converts the mailbox to a shared mailbox and hides it from address lists.
- Clears calendar events organized by the user.
- Removes all AD group memberships (except the primary group).
- Updates the user’s AD description with termination details.
- Disables the AD account and moves it to a designated “Disabled” Organizational Unit (OU).
- Prompts for and validates a ticket number (e.g., `REQ1234567`) to document the action.

---

## ⚠️ **Customization Required**
**Important:**  
The following placeholders **must be updated** for your environment:  

- `skystar.com` → **Replace with your organization's email domain.**  
- `Disabled Sync, OU=Disabled Objects` → **Update to match your actual AD structure.**  

📌 **If these are not updated, the script may not work correctly!**  

---

## **Prerequisites**

### **Active Directory Module**
Ensure the Active Directory module is installed and imported:
```powershell
Import-Module ActiveDirectory
```

### **Exchange Online Connectivity**
You must have the Exchange Online PowerShell module installed and be connected:
```powershell
Connect-ExchangeOnline
```
This is required for mailbox-related commands to function correctly.

### **Administrative Permissions**
Ensure you have sufficient admin privileges in:
- Active Directory (for disabling accounts and modifying attributes).
- Exchange Online (for converting mailboxes and clearing calendar events).

---

## **Usage**

### **1. Open a PowerShell Session**
Use Exchange Management Shell or a PowerShell session with the Exchange Online module loaded.

### **2. Navigate to the Script Location**
```powershell
cd C:\Path\To\Your\Script\
```

### **3. (If Needed) Adjust Execution Policy**
First-time users may need to allow script execution:
```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```
**Warning:** Changing Execution Policy allows unsigned scripts to run—ensure scripts are from a trusted source.

### **4. Run the Script**
```powershell
.\AD-O365Hybrid-Termination.ps1
```

### **5. Follow the Prompts**
- Enter the username (LAN ID) of the user being terminated.
- Enter a valid ticket number (e.g., `REQ1234567`).
- The script will process the termination and prompt you to confirm screenshots at the end.

---

## **Additional Notes**

### **Ticket Number Format**
The script enforces a 10-character ticket format:
- Must start with `REQ`
- Followed by 7 numeric digits (e.g., `REQ1234567`).

### **Username Validation**
Ensures the provided username exists in AD and does not contain invalid characters.

### **Hidden Shared Mailbox**
Converts the mailbox to Shared and hides it from address lists after termination.

### **Removing Group Memberships**
Removes all group memberships except the primary group to revoke access.

### **Error Handling**
If invalid input is provided (e.g., username not found, incorrect ticket format), the script will prompt until valid input is entered.

---

## **Disclaimer**
This script is provided as-is.  
Always test in a non-production environment before applying to live accounts.  
Ensure you have backups and understand the implications of modifying user accounts and mailboxes.

---

## **License**
This project is licensed under the [MIT License](https://github.com/Abyloon/Powershell-Scripts/blob/main/LICENSE.md).