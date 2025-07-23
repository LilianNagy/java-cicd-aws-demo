#!/bin/bash
set -e

echo "Building Maven project..."

mvn clean compile

echo "Build successful."
