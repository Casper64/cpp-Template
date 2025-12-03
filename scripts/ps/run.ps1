$ErrorActionPreference = "Stop"
scripts/ps/build.ps1
if ($LASTEXITCODE -ne 0) { exit 1 }

echo "========================"

Invoke-Expression "& ./build/PROJECT_NAME.exe"
