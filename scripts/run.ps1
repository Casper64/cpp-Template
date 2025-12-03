echo "Rebuilding CMake Targest"
echo "========================"

cmake -S . -B build
cmake --build build

echo "========================"

Invoke-Expression "& ./build/PROJECT_NAME.exe"
