# OpenSSH and SFTP

## Purpose

OpenSSH provides encrypted remote administration and SFTP file transfers. SFTP runs through SSH; it is not the same as FTP.

## Document your implementation

- **OpenSSH server installed:** `[yes / no]`
- **SFTP access path:** `[Tailscale / LAN / other]`
- **Authentication:** `[SSH keys / passwords / both]`
- **SFTP users or group:** `[use example names only]`
- **Storage location:** `[example path; do not disclose sensitive paths]`
- **Chroot or restricted SFTP configuration:** `[describe if enabled]`
- **SSH port:** `[verified value]`

## Basic client example

Replace the example hostname and username with your own values locally; do not publish private endpoints if you want to keep them private.

```bash
sftp username@server-address
```

## Review

Before publishing, inspect permissions, user restrictions, and the effective SSH configuration. Do not upload private keys or user-specific configuration containing secrets.
