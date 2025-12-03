clear

echo "Rebuilding CMake Targets"
echo "========================"

$ErrorActionPreference = "Stop"

cmake -S . -B build
if ($LASTEXITCODE -ne 0) { exit 1 }
cmake --build build
if ($LASTEXITCODE -ne 0) { exit 1 }
