# Intune Device Compliance Report (Graph Safe Query)

Import-Module Microsoft.Graph

Connect-MgGraph -Scopes "DeviceManagementManagedDevices.Read.All"

Write-Output "Fetching Intune managed devices..."

$devices = Get-MgDeviceManagementManagedDevice -All

if (-not $devices) {
    Write-Output "No devices returned OR Intune not enabled for this tenant."
    exit
}

$report = $devices | Select-Object `
    DeviceName,
    OperatingSystem,
    OSVersion,
    ComplianceState,
    LastSyncDateTime

$report | Export-Csv -Path "Intune_Compliance_Report.csv" -NoTypeInformation

Write-Output "Report generated successfully."