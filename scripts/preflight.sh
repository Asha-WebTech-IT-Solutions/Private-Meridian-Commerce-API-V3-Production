#!/usr/bin/env sh
set -eu

echo "Checking required runtime configuration..."
: "${APP_ENV:=local}"
: "${APP_URL:=http://localhost:8000}"

case "$APP_ENV" in
  production)
    if [ "${APP_DEBUG:-false}" = "true" ]; then
      echo "Refusing production startup with APP_DEBUG=true" >&2
      exit 1
    fi
    ;;
esac

printf 'Environment: %s\n' "$APP_ENV"
printf 'Application URL: %s\n' "$APP_URL"
echo "Preflight passed. Application-specific checks should be added here."
