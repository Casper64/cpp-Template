echo "Rebuilding CMake Targest"
echo "========================"

cmake -S . -B build
cmake --build build

echo "========================"

./build/PROJECT_NAME.exe
