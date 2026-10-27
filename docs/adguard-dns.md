# AdGuard Home DNS

## Purpose

AdGuard Home provides DNS resolution and filtering for devices configured to use it. DNS filtering applies only to clients whose DNS requests actually pass through this service.

## Document the setup

- **Install type:** `[native package / container / other]`
- **Host:** `[server / separate device]`
- **DNS clients:** `[server / LAN / Tailscale clients]`
- **Upstream DNS providers:** `[document your selected providers]`
- **Filtering lists:** `[list names, not private exports]`
- **Encrypted DNS:** `[enabled / disabled / not configured]`

Do not publish admin passwords, session cookies, API keys, or unredacted configuration exports.

## Validation


```bash
nslookup example.com DNS_SERVER

Non-authoritative answer:
Name:   example.com
Address: 104.20.23.154
Name:   example.com
Address: 172.66.147.243
Name:   example.com
Address: 2606:4700:10::ac42:93f3
Name:   example.com
Address: 2606:4700:10::6814:179a
```

Confirm that clients are configured to use AdGuard Home and that firewall rules permit only the DNS traffic you intend to allow.
