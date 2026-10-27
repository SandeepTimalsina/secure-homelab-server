# Security and SSH Hardening

This document should describe the configuration that is actually enabled on the server. Do not copy example settings blindly into a live system.

## Record your controls

- SSH authentication: `[SSH keys / passwords / both]`
- SSH port: `[default 22 / custom; avoid publishing if sensitive]`
- SSH access scope: `[Tailscale / LAN / other]`
- SFTP-only users or groups: `[describe if configured]`
- UFW default incoming policy: `[verified value]`
- Allowed services and interfaces: `[list verified rules]`
- Update process: `[describe]`
- Backups and recovery: `[describe]`

## Useful inspection commands

```bash
sudo ufw status verbose
sudo ufw status numbered
sudo sshd -T | grep -E '^(port|permitrootlogin|passwordauthentication|pubkeyauthentication|allowusers|allowgroups|subsystem)'
sudo ss -tulpn
```

Some output may contain usernames, local addresses, or service details. Redact before sharing.

## Security checklist

- [ ] Keep the OS and exposed services updated.
- [ ] Use strong authentication; prefer SSH keys where appropriate.
- [ ] Disable root SSH login if it is not needed and the configuration has been tested.
- [ ] Limit access to required interfaces and networks.
- [ ] Confirm firewall rules before changing them; retain a recovery path.
- [ ] Back up important data and test restoration.
- [ ] Do not commit private keys, passwords, tokens, or unredacted logs.
- [ ] Verify whether SFTP is reachable outside Tailscale before describing it as private-only.
