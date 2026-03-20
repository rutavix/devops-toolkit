# devops-toolkit

Practical PowerShell automation scripts for deployment and rollback workflows.

## Included scripts

- `scripts/deploy.ps1` - deployment flow with dry-run support
- `scripts/rollback.ps1` - rollback flow with target release selection
- `scripts/validate-config.ps1` - validates deployment config JSON

## Example usage

```powershell
./scripts/validate-config.ps1 -ConfigPath ./examples/deployment.config.json
./scripts/deploy.ps1 -Environment staging -Version 1.2.0 -WhatIf
./scripts/rollback.ps1 -Environment staging -ToVersion 1.1.5 -WhatIf
```
