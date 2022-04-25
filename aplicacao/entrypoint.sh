#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /aplicacao/tmp/pids/server.pid

# Run db create
rake db:create

# Run db migrate
rake db:migrate

# Run db seeds
rake db:seed

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"
