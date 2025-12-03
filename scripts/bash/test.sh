#!/bin/bash

set -e

source scripts/bash/build.sh

echo "========================"

ctest --test-dir build
