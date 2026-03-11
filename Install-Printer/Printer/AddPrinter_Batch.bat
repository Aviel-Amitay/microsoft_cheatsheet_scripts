PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList 'Set-ExecutionPolicy remoteSigned -Force' -Verb RunAs}"

powershell -noprofile -command "&{ start-process powershell -ArgumentList '-noprofile -file C:\Printers\Add_Printer\AddPrinter.ps1' -verb RunAs}"

del "C:\Printers"
