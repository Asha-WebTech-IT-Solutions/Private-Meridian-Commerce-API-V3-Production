# Security Policy

## Reporting

Do not publish real credentials, private keys, customer data, or production endpoints in issues or pull requests. Contact the repository maintainer privately to report a suspected exposure.

## Secret handling

- Use a managed secrets store for production credentials.
- Grant least-privilege access and rotate credentials regularly.
- Revoke exposed credentials immediately.
- Treat Git history, forks, logs, and CI artifacts as possible copies of committed data.
