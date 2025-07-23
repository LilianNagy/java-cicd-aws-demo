#!/bin/bash
set -e

echo "Running Maven tests..."

mvn test

echo "Tests passed."
