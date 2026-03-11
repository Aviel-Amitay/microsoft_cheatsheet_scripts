# Install Printer with PowerShell

This guide explains how to install a printer with PowerShell and how to extract the `.inf` driver file from a vendor driver package.

## Files

- [AddPrinter.ps1](./Printer/AddPrinter.ps1)
- [AddPrinter_Batch.bat](./Printer/AddPrinter_Batch.bat)

## Prerequisites

- Run PowerShell as Administrator.
- Copy the printer driver files to a local folder such as `C:\Printers\drivers`.
- Make sure you know:
  - The printer IP address
  - The printer driver name as Windows shows it
  - The path to the `.inf` file

## Extract the INF File from the Driver Package

Example with Brother printers:

1. Go to the Brother support website.
2. Open the page for the specific printer model.
3. Download the full driver package or printer driver executable.
4. Run the downloaded `.exe` file.
5. During extraction, the installer usually creates a `gdi` folder.
6. Open the extracted folder and look for the `.inf` file inside the `gdi` directory.

Example path:

```text
C:\Users\<UserName>\Downloads\gdi\BRPRC16A.INF
```

After you find the `.inf` file, copy the '.inf' driver file to a fixed path, for example:

```text
C:\Printers\drivers
```

## Configure the PowerShell Script

Edit [AddPrinter.ps1](./Printer/AddPrinter.ps1) and update these variables:

```powershell
$DriverINF = "C:\Printers\drivers\BRPRC16A.INF"
$PrinterModel_DriverName = "Brother DCP-L8410CDW series"
$PrinterName = "MyPrinter"
$PortName = "QS-192.168.200.30"
$PrinterIP = "192.168.200.30"
```

Meaning:

- `$DriverINF`: Full path to the `.inf` file
- `$PrinterModel_DriverName`: Exact Windows printer driver name
- `$PrinterName`: Printer name that users will see
- `$PortName`: TCP/IP port name
- `$PrinterIP`: Printer IP address

## Install the Printer

Run the script as Administrator:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File C:\Printers\Add_Printer\AddPrinter.ps1
```

The script performs these actions:

1. Imports the driver package with `pnputil.exe`
2. Adds the printer driver if it is not already installed
3. Creates the TCP/IP printer port if needed
4. Creates the printer object if it does not already exist

## Optional Batch Launcher

You can also use the batch file to start the PowerShell script with elevation:

```bat
AddPrinter_Batch.bat
```

## Notes

- Keep the extracted driver files together. Windows may need the full extracted folder, not only the `.inf` file.
- If the driver name in the script is incorrect, the printer installation will fail.
- This can be adapted for deployment by login script, startup script, or Group Policy.