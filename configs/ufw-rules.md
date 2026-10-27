# UFW Firewall Rules

This file is a documentation template, not a copy of the server's live firewall policy. Add only rules you have verified with `sudo ufw status numbered`.

| Rule / service | Interface or source scope | Purpose | Verified? |
|---|---|---|---|
| SSH / SFTP | `[Tailscale / LAN / other]` | Remote administration and file transfer | No |
| DNS TCP/UDP 53 | `[trusted clients only]` | DNS queries to AdGuard Home | No |
| AdGuard web UI | `[admin network only]` | Administration | No |
| Other | `[describe]` | `[purpose]` | No |

## Inspect current rules

```bash
sandip@sandip:~$ sudo ufw status verbose
Status: active
Logging: on (low)
Default: deny (incoming), allow (outgoing), deny (routed)
New profiles: skip

To                         Action      From
--                         ------      ----
22/tcp                     ALLOW IN    Anywhere                  
53/udp                     ALLOW IN    Anywhere                  
53/tcp                     ALLOW IN    Anywhere                  
80/tcp                     ALLOW IN    Anywhere                  
22/tcp (v6)                ALLOW IN    Anywhere (v6)             
53/udp (v6)                ALLOW IN    Anywhere (v6)             
53/tcp (v6)                ALLOW IN    Anywhere (v6)             
80/tcp (v6)                ALLOW IN    Anywhere (v6)             


sandip@sandip:~$ sudo ufw status numbered
Status: active

     To                         Action      From
     --                         ------      ----
[ 1] 22/tcp                     ALLOW IN    Anywhere                  
[ 2] 53/udp                     ALLOW IN    Anywhere                  
[ 3] 53/tcp                     ALLOW IN    Anywhere                  
[ 4] 80/tcp                     ALLOW IN    Anywhere                  
[ 5] 22/tcp (v6)                ALLOW IN    Anywhere (v6)             
[ 6] 53/udp (v6)                ALLOW IN    Anywhere (v6)             
[ 7] 53/tcp (v6)                ALLOW IN    Anywhere (v6)             
[ 8] 80/tcp (v6)                ALLOW IN    Anywhere (v6)             


```

