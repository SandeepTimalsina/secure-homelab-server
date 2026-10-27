# Networking and Tailscale

## Purpose

Tailscale provides private connectivity between authorized devices. The exact services available over the tailnet depend on host firewall rules, service bind addresses, and Tailscale policy.

## Document your actual configuration

Fill in these items without publishing secrets:

- **Tailscale installed on:** `[server / clients]`
- **SFTP access path:** `[Tailscale only / LAN and Tailscale / other]`
- **SSH administration path:** `[describe verified path]`
- **AdGuard Home DNS clients:** `[server / LAN clients / tailnet clients]`
- **DNS routing method:** `[local DNS / Tailscale DNS setting / other]`
- **Subnet routing or exit node:** `[none / describe if configured]`

## Safe checks

```bash
tailscale status
tailscale ip -4
ip -brief address
ip route
```

