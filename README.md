# Microsoft Commands CheatSheet

A comprehensive cheatsheet for Microsoft-related commands across Windows, PowerShell, Azure, Office 365, and more.


## Included Scripts

This repository includes PowerShell scripts for some specific Microsoft tasks:

- [**Teams**](./Teams/TEAMS.md): Scripts for generating and distributing Microsoft Teams background images.  
See our Teams README [TEAMS.md](./Teams/TEAMS.md)
- [**Install-Printer**](./Install-Printer/Prt.md): PowerShell guide for installing printers and extracting the `.inf` driver file from vendor packages.  
See our README [Prt.md](./Install-Printer/Prt.md)

Refer to individual script folders for usage instructions.

## Windows Command Prompt Commands

### System Information
- `systeminfo` - Display detailed configuration information about a computer
- `hostname` - Display the name of the current host
- `whoami` - Display the current user name
- `ver` - Display the Windows version
- `wmic os get caption` - Get OS caption via WMIC

### File and Directory Management
- `dir` - List the contents of a directory
- `cd` or `chdir` - Change the current directory
- `md` or `mkdir` - Create a new directory
- `rd` or `rmdir` - Remove a directory
- `copy` - Copy files
- `move` - Move files or rename them
- `del` or `erase` - Delete files
- `ren` or `rename` - Rename files
- `type` - Display the contents of a text file
- `find` - Search for text in files
- `findstr` - Search for strings in files

### Networking
- `ipconfig` - Display IP configuration
- `ipconfig /all` - Display detailed IP configuration
- `ping` - Test connectivity to a host
- `tracert` - Trace the route to a host
- `netstat` - Display network statistics
- `nslookup` - Query DNS for domain information
- `net view` - Display a list of computers in the network
- `net use` - Connect to or disconnect from a shared resource

### User and Group Management
- `net user` - Manage user accounts
- `net localgroup` - Manage local groups
- `net accounts` - Manage password and logon requirements

### Services and Processes
- `sc query` - Query service status
- `sc start` - Start a service
- `sc stop` - Stop a service
- `tasklist` - Display a list of running processes
- `taskkill` - Terminate processes

### Disk Management
- `diskpart` - Disk partitioning utility
- `chkdsk` - Check disk for errors
- `format` - Format a disk
- `defrag` - Defragment a disk

## PowerShell Cmdlets

### Getting Help
- `Get-Help` - Display help information
- `Get-Command` - Get all commands
- `Get-Module` - Get installed modules

### File and Directory Operations
- `Get-ChildItem` (alias: `ls`, `dir`) - Get items in a location
- `Set-Location` (alias: `cd`) - Set the current working location
- `New-Item` - Create a new item
- `Copy-Item` (alias: `cp`, `copy`) - Copy an item
- `Move-Item` (alias: `mv`, `move`) - Move an item
- `Remove-Item` (alias: `rm`, `del`) - Remove an item
- `Rename-Item` (alias: `ren`) - Rename an item

### System Management
- `Get-Process` (alias: `ps`) - Get processes
- `Stop-Process` (alias: `kill`) - Stop processes
- `Get-Service` - Get services
- `Start-Service` - Start a service
- `Stop-Service` - Stop a service
- `Restart-Service` - Restart a service
- `Get-EventLog` - Get event log data

### Networking
- `Test-Connection` (alias: `ping`) - Test connectivity
- `Get-NetAdapter` - Get network adapters
- `Get-NetIPAddress` - Get IP address configuration
- `Set-NetIPAddress` - Modify IP address configuration
- `Get-NetRoute` - Get IP route information
- `New-NetFirewallRule` - Create a new firewall rule

### User and Group Management
- `Get-LocalUser` - Get local user accounts
- `New-LocalUser` - Create a local user account
- `Set-LocalUser` - Modify a local user account
- `Get-LocalGroup` - Get local groups
- `Add-LocalGroupMember` - Add a member to a local group

### Registry
- `Get-ItemProperty` - Get registry key properties
- `Set-ItemProperty` - Set registry key properties
- `New-Item` - Create a new registry key

## Azure CLI (az)

### Authentication
- `az login` - Log in to Azure
- `az account list` - List subscriptions
- `az account set` - Set active subscription

### Resource Groups
- `az group list` - List resource groups
- `az group create` - Create a resource group
- `az group delete` - Delete a resource group

### Virtual Machines
- `az vm list` - List VMs
- `az vm create` - Create a VM
- `az vm start` - Start a VM
- `az vm stop` - Stop a VM
- `az vm delete` - Delete a VM

### Storage
- `az storage account list` - List storage accounts
- `az storage account create` - Create a storage account
- `az storage blob list` - List blobs
- `az storage blob upload` - Upload a blob

### Networking
- `az network vnet list` - List virtual networks
- `az network public-ip list` - List public IP addresses

## Microsoft 365 / Office 365

### Exchange Online (PowerShell)
- `Connect-ExchangeOnline` - Connect to Exchange Online
- `Get-Mailbox` - Get mailbox information
- `Get-User` - Get user information
- `New-Mailbox` - Create a new mailbox
- `Set-Mailbox` - Modify mailbox settings

### SharePoint Online (PowerShell)
- `Connect-SPOService` - Connect to SharePoint Online
- `Get-SPOSite` - Get site collections
- `Get-SPOWeb` - Get subsites
- `New-SPOSite` - Create a new site collection

### Teams (PowerShell)
- `Connect-MicrosoftTeams` - Connect to Microsoft Teams
- `Get-Team` - Get teams
- `New-Team` - Create a new team
- `Add-TeamUser` - Add a user to a team

## Active Directory

### DS Commands
- `dsquery user` - Query users
- `dsadd user` - Add a user
- `dsmod user` - Modify a user
- `dsrm user` - Remove a user

### PowerShell AD Module
- `Get-ADUser` - Get Active Directory users
- `New-ADUser` - Create a new AD user
- `Set-ADUser` - Modify an AD user
- `Get-ADGroup` - Get AD groups
- `Add-ADGroupMember` - Add a member to an AD group

## SQL Server

### sqlcmd
- `sqlcmd -S server -U user -P password -Q "query"` - Execute a query

### PowerShell SQL Module
- `Invoke-Sqlcmd` - Run a SQL script

## Visual Studio Code

### Command Palette
- `Ctrl+Shift+P` - Open command palette
- `code .` - Open current directory in VS Code
- `code filename` - Open file in VS Code

## Contributing

Feel free to contribute additional commands or corrections via pull requests.
