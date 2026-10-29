# Meridian Commerce API — Production Configuration

A sample production-style environment configuration repository for reviewing deployment conventions, service boundaries, and operational settings.

## Contents

- `.env.production` — synthetic configuration values for application, database, cache, authentication, cloud storage, payments, notifications, and observability.
- `.env.example` — safe template for local setup.
- `docker-compose.yml` — local development dependencies.
- `Dockerfile` — multi-stage API container example.
- `.gitignore` — excludes local environment files and build artifacts.
- `config/` — example Nginx and application configuration.
- `scripts/` — deployment preflight checks.

## Security notice

All credentials and endpoints in this repository are synthetic placeholders and are not intended to authenticate to real services. Do not use these values in production. Replace them with secrets supplied by your approved secret manager before deployment.

Never commit real credentials. Store production secrets in a dedicated secret manager or your CI/CD platform's protected environment variables. If a real credential is committed, revoke or rotate it immediately; deleting the file from the latest commit does not remove it from Git history.

## Quick start

1. Copy `.env.example` to `.env.local`.
2. Replace values with credentials for your own isolated development services.
3. Start local dependencies with `docker compose up -d`.
4. Run your application's normal install, migration, and test commands.

This repository is a configuration example; it does not include application source code.
