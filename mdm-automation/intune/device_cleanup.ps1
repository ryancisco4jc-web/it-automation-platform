# Device Cleanup Script (Demo)

Write-Output "Checking for inactive devices..."

$devices = @(
    @{Name="Laptop-01"; LastSeen=5},
    @{Name="Laptop-02"; LastSeen=45},
    @{Name="Laptop-03"; LastSeen=60}
)

$stale = $devices | Where-Object {$_.LastSeen -gt 30}

Write-Output "Devices to review or remove:"
$stale | Format-Table