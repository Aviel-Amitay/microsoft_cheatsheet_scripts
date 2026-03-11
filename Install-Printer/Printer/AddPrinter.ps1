$DriverINF = "C:\Printers\drivers\BRPRC16A.INF"
$PrinterModel_DriverName = "Brother DCP-L8410CDW series"
$PrinterName = "MyPrinter"
$PortName = "QS-192.168.200.30"
$PrinterIP = "192.168.200.30"

Write-Host "=== Installing Printer Driver Package ==="

# Install driver package if not already present
$driver = Get-PrinterDriver -Name $PrinterModel_DriverName -ErrorAction SilentlyContinue

if (-not $driver) {
    pnputil.exe -i -a $DriverINF
    Start-Sleep -Seconds 2
    Add-PrinterDriver -Name $PrinterModel_DriverName
}
else {
    Write-Host "Driver already installed: $PrinterModel_DriverName"
}

Write-Host "=== Checking Printer Port ==="

$port = Get-PrinterPort -Name $PortName -ErrorAction SilentlyContinue

if (-not $port) {
    Add-PrinterPort -Name $PortName -PrinterHostAddress $PrinterIP
    Write-Host "Port created: $PortName"
}
else {
    Write-Host "Port already exists: $PortName"
}

Write-Host "=== Checking Printer ==="

$printer = Get-Printer -Name $PrinterName -ErrorAction SilentlyContinue

if (-not $printer) {
    Add-Printer `
        -Name $PrinterName `
        -PrinterModel_DriverName $PrinterModel_DriverName `
        -PortName $PortName

    Write-Host "Printer installed: $PrinterName"
}
else {
    Write-Host "Printer already exists: $PrinterName"
}

Write-Host "=== Done ==="
