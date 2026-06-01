#!/usr/bin/env bash

set -euo pipefail

ROOT="cs453-labs"

mkdir -p "$ROOT"

# Top-level files
touch "$ROOT/README.md"
touch "$ROOT/LICENSE"
touch "$ROOT/.gitignore"

# Docs
mkdir -p "$ROOT/docs"
touch "$ROOT/docs/setup.md"
touch "$ROOT/docs/node-quickstart.md"
touch "$ROOT/docs/docker-quickstart.md"
touch "$ROOT/docs/submitting-labs.md"
touch "$ROOT/docs/troubleshooting.md"

# Examples
examples=(
  "01-tcp-echo"
  "02-http-json"
  "03-express-routes"
  "04-rest-client"
  "05-middleware"
  "06-jwt-auth"
  "07-service-to-service"
  "08-rabbitmq-pubsub"
  "09-websockets"
  "10-graphql"
  "11-docker-compose"
)

for ex in "${examples[@]}"; do
  mkdir -p "$ROOT/examples/$ex"
  touch "$ROOT/examples/$ex/README.md"
done

# Labs
labs=(
  "lab01-tcp-echo"
  "lab02-http-json"
  "lab03-rest-api"
  "lab04-api-client"
  "lab05-middleware"
  "lab06-authentication"
  "lab07-service-to-service"
  "lab08-message-queue"
  "lab09-websockets"
  "lab10-graphql"
  "lab11-containerization"
)

for lab in "${labs[@]}"; do
  mkdir -p "$ROOT/labs/$lab/starter/src"
  mkdir -p "$ROOT/labs/$lab/starter/test"
  mkdir -p "$ROOT/labs/$lab/notes"

  touch "$ROOT/labs/$lab/README.md"
  touch "$ROOT/labs/$lab/starter/package.json"
  touch "$ROOT/labs/$lab/notes/hints.md"
done

# Scripts
mkdir -p "$ROOT/scripts"
touch "$ROOT/scripts/check-env.sh"
touch "$ROOT/scripts/clean.sh"
touch "$ROOT/scripts/test-all.sh"

chmod +x "$ROOT/scripts/"*.sh

echo "Created $ROOT directory structure."
