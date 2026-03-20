param(
    [Parameter(Mandatory = $true)]
    [string]$ConfigPath
)

if (-not (Test-Path -LiteralPath $ConfigPath)) {
    throw "Config not found: $ConfigPath"
}

$config = Get-Content -LiteralPath $ConfigPath -Raw | ConvertFrom-Json

$requiredFields = @('service', 'environment', 'healthEndpoint')
foreach ($field in $requiredFields) {
    if (-not $config.PSObject.Properties.Name.Contains($field)) {
        throw "Missing required field: $field"
    }
}

Write-Output "Configuration is valid"
Write-Output ("Service: " + $config.service)
Write-Output ("Environment: " + $config.environment)
