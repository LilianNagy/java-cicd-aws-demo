#!/bin/bash
set -e

ENV=$1

if [[ -z "$ENV" ]]; then
  echo "No environment specified (dev/test/stg)."
  exit 1
fi

echo "Deploying to $ENV environment..."

# Simulated deploy
echo "Deployment to $ENV done at $(date)" >> deployed.log

echo "Deployed to $ENV."
