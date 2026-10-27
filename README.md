# Secure Self-Hosted SFTP & DNS Server

A self-hosted Linux server project focused on secure remote file transfers, private networking, DNS filtering, and host-level firewall hardening.
(For making the server public can be configured with cloudflare tunnel with a custom domain).
Amd processor A4 in hp 1ghz 2gb ram laptop converted to a server that host a 500gb hardrive.
## Overview

This project combines several services to build a private and security-focused homelab environment.

### Features

- **SFTP:** Secure file transfers using OpenSSH.(can be change to real cloud like use of for example owncloud but my server is low end so too much overhead.)
- **Tailscale:** Private network connectivity for authorized devices.(Can be accessed by tailscale, wifi or ethernet from local environment.)
- **AdGuard Home:** DNS resolution, ad blocking, and DNS filtering.
- **UFW:** Host-based firewall rules to restrict network access.
- **SSH hardening:** Customized SSH access controls and authentication settings.
- **Linux administration:** Service management, networking, and security configuration.(Docker installed and configured can be used for hosting low end containers but not used due to hardware limitaions.)

## Architecture

Client devices connect to the server through the Tailscale network for private access to the services permitted by the firewall and SSH configuration.

AdGuard Home provides DNS filtering for the clients configured to use it.
Adguard is configured inside of tailscale too for non local access of the dns.
## Server Specifications

| Component | Specification |
|---|---|
| Hardware (Ubuntu 26 lts server used)
| CPU AMD A4-1250 with Radeon(TM) HD Graphics (2) @ 1.00 GHz
| RAM | 632.46 MiB / 1.63 GiB (38%) used on idle
| Storage | Disk (/): 78.63 GiB / 456.35 GiB (17%) - ext4
| Network | [Ethernet / Wi-Fi] |
| Virtualization | [kvm installed if needed but not used] |

## Software Stack

| Service | Purpose |
|---|---|
| OpenSSH / SFTP | Secure file transfers and remote administration |
| Tailscale | Private network connectivity |
| AdGuard Home | DNS filtering and DNS management |
| UFW | Firewall policy enforcement |

## Security Configuration

- Restricted access through explicitly configured firewall rules.
- SSH authentication and access controls.
- Private remote connectivity through Tailscale.
- DNS filtering through AdGuard Home.
- Only required services and ports should be exposed.
- Configuration and access policies should be reviewed regularly.

## Setup and Documentation

Detailed installation steps, firewall rules, SSH configuration, and DNS settings will be documented in the repository.

## Lessons Learned

- Linux server administration
- Private networking and remote access
- DNS configuration and filtering
- Firewall configuration and network security
- Secure file-transfer services
- Troubleshooting and service management

## Disclaimer

This project is intended for learning, personal infrastructure, and educational purposes. Security depends on the actual configuration, updates, authentication policies, and network exposure.

