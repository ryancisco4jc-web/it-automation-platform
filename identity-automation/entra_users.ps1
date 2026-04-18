Write-Output "Fetching Entra users (demo)..."

$users = @(
    @{Name="Alice"; Role="Admin"},
    @{Name="Bob"; Role="User"}
)

$users | Format-Table