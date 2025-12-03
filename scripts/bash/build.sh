#!/bin/bash

set -e

clear
echo "Rebuilding CMake Targets"
echo "========================"

cmake -S . -B build
cmake --build build
