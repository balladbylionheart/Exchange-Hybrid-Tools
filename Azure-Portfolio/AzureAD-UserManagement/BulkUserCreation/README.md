Here’s a polished **README.md** for the **BulkUserCreation** project under your **Azure Portfolio**.

---

```markdown
# Bulk User Creation Tool

The **Bulk User Creation Tool** simplifies the onboarding process for multiple users in **Azure Active Directory (Azure AD)**. By leveraging a CSV file, you can automate the creation of user accounts, assign roles or groups, and set passwords.

---

## **Features**
- Automates the creation of Azure AD users in bulk.
- Assigns users to specified groups during creation.
- Sets initial passwords for new accounts.
- Provides a simulation mode (`-Simulate`) to preview actions without making changes.

---

## **Requirements**
- **PowerShell 7.x** or later.
- **AzureAD Module** installed. To install, run:
  ```powershell
  Install-Module -Name AzureAD
  ```
- Proper permissions in Azure Active Directory to create users and assign groups.

---

## **Setup**
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/Azure-Portfolio.git
   cd Azure-Portfolio/AzureAD-UserManagement/BulkUserCreation
   ```

2. **Update the CSV File**:
   - Open `sample-users.csv` and add user details in the following format:
     ```csv
     DisplayName,UserPrincipalName,MailNickName,Password,Group
     John Doe,john.doe@yourdomain.com,johndoe,Pa$$w0rd123,HR
     Jane Smith,jane.smith@yourdomain.com,janesmith,Pa$$w0rd123,IT
     ```

3. **Review the Script**:
   - Open `BulkUserCreation.ps1` to ensure settings like the CSV file path and simulation flag match your requirements.

---

## **Usage**
1. **Run the Script**:
   - In PowerShell, execute the script:
     ```powershell
     .\BulkUserCreation.ps1
     ```

2. **Simulation Mode**:
   - To preview the actions without making any changes, set `$Simulate = $true` in the script.

3. **Log Output**:
   - The script outputs the status of each user creation to the console.

---

## **CSV File Format**
The `sample-users.csv` file should follow this structure:
```csv
DisplayName,UserPrincipalName,MailNickName,Password,Group
Alex Doe,alex.doe@yourdomain.com,alexdoe,Pa$$w0rd123,HR
Jack Smith,jack.smith@yourdomain.com,jacksmith,Pa$$w0rd123,IT
```

### **Field Descriptions**
| **Field**          | **Description**                                                                 |
|--------------------|-------------------------------------------------------------------------------|
| **DisplayName**     | Full name of the user (e.g., John Doe).                                       |
| **UserPrincipalName** | User’s unique email address or sign-in name (e.g., john.doe@yourdomain.com). |
| **MailNickName**    | Alias for the user's mailbox (e.g., johndoe).                                |
| **Password**        | Initial password for the user account.                                       |
| **Group**           | (Optional) Name of the Azure AD group to assign the user to.                 |

---

## **Notes**
- **Permissions**: Ensure you have the required permissions in Azure AD to create users and manage groups.
- **Password Policy**: Passwords must comply with your organization's Azure AD password policy.
- **Group Assignments**: If the `Group` field is blank, no group will be assigned.

---

## **Disclaimer**
This script is designed for **educational and demonstration purposes**. It has not been tested in a live Azure environment due to access limitations. However, it adheres to Azure best practices and should function as intended when run with appropriate permissions.

---

## **Contact**
If you have questions or suggestions for improving this tool, feel free to reach out!
- [LinkedIn Profile](https://www.linkedin.com/in/helen-najar)

---

## **License**
This project is licensed under the MIT License. See the [LICENSE](https://github.com/Abyloon/O365-Automation-and-AD-Management-Tools/blob/main/LICENSE.md) file for details.
