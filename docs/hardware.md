# Hardware and System Specifications

The following values were copied from the provided Fastfetch output. Verify them on the running system before relying on them as authoritative.

| Component | Reported value |
|---|---|
| Device | HP Pavilion TS 11 Notebook PC |
| CPU | AMD A4-1250 with Radeon(TM) HD Graphics, 2 cores, 1.00 GHz |
| GPU | AMD Radeon HD 8210 |
| Architecture | x86_64 |
| Memory | 632.46 MiB used / 1.63 GiB reported total at capture time |
| Swap | 2.00 GiB total |
| Root filesystem | ext4, 78.63 GiB used / 456.35 GiB total at capture time |
| OS | Ubuntu 26.04.1 LTS (reported by Fastfetch; verify) |
| Kernel | Linux 7.0.0-38-generic (reported by Fastfetch; verify) |
| Shell | Bash 5.3.9 |
| Display | 1366 × 768, built-in |
| Network interface | `enp1s0` (reported by Fastfetch) |

## Verification commands

```bash
sandip@sandip:~$ cat /etc/os-release
uname -r
lscpu
free -h
lsblk -o NAME,SIZE,TYPE,FSTYPE,MOUNTPOINTS
df -h /
PRETTY_NAME="Ubuntu 26.04.1 LTS"
NAME="Ubuntu"
VERSION_ID="26.04"
VERSION="26.04.1 LTS (Resolute Raccoon)"
VERSION_CODENAME=resolute
ID=ubuntu
ID_LIKE=debian
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
UBUNTU_CODENAME=resolute
LOGO=ubuntu-logo
7.0.0-38-generic
Architecture:                x86_64
  CPU op-mode(s):            32-bit, 64-bit
  Address sizes:             40 bits physical, 48 bits virtual
  Byte Order:                Little Endian
CPU(s):                      2
  On-line CPU(s) list:       0,1
Vendor ID:                   AuthenticAMD
  Model name:                AMD A4-1250 APU with Radeon(TM) HD Graphics
    CPU family:              22
    Model:                   0
    Thread(s) per core:      1
    Core(s) per socket:      2
    Socket(s):               1
    Stepping:                1
    CPU(s) scaling MHz:      80%
    CPU max MHz:             1000.0000
    CPU min MHz:             800.0000
    BogoMIPS:                1996.36
    Flags:                   fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ht syscall nx mmxext fxsr_opt pdpe1gb rdtscp lm constant_tsc 
                             rep_good nopl nonstop_tsc cpuid extd_apicid aperfmperf pni pclmulqdq monitor ssse3 cx16 sse4_1 sse4_2 movbe popcnt aes xsave avx f16c lahf_lm cmp_legacy svm ex
                             tapic cr8_legacy abm sse4a misalignsse 3dnowprefetch osvw ibs skinit wdt topoext perfctr_nb bpext perfctr_llc hw_pstate proc_feedback ssbd vmmcall bmi1 xsaveop
                             t arat npt lbrv svm_lock nrip_save tsc_scale flushbyasid decodeassists pausefilter pfthreshold overflow_recov
Virtualization features:     
  Virtualization:            AMD-V
Caches (sum of all):         
  L1d:                       64 KiB (2 instances)
  L1i:                       64 KiB (2 instances)
  L2:                        1 MiB (1 instance)
NUMA:                        
  NUMA node(s):              1
  NUMA node0 CPU(s):         0,1
Vulnerabilities:             
  Gather data sampling:      Not affected
  Ghostwrite:                Not affected
  Indirect target selection: Not affected
  Itlb multihit:             Not affected
  L1tf:                      Not affected
  Mds:                       Not affected
  Meltdown:                  Not affected
  Mmio stale data:           Not affected
  Old microcode:             Not affected
  Reg file data sampling:    Not affected
  Retbleed:                  Mitigation; untrained return thunk; SMT disabled
  Spec rstack overflow:      Not affected
  Spec store bypass:         Mitigation; Speculative Store Bypass disabled via prctl
  Spectre v1:                Mitigation; usercopy/swapgs barriers and __user pointer sanitization
  Spectre v2:                Mitigation; Retpolines; STIBP disabled; RSB filling; PBRSB-eIBRS Not affected; BHI Not affected
  Srbds:                     Not affected
  Tsa:                       Not affected
  Tsx async abort:           Not affected
  Vmscape:                   Not affected
               total        used        free      shared  buff/cache   available
Mem:           1.6Gi       640Mi       162Mi        16Mi       1.0Gi       1.0Gi
Swap:          2.0Gi        28Ki       2.0Gi
NAME     SIZE TYPE FSTYPE   MOUNTPOINTS
loop0    1.5M loop squashfs /snap/hwctl/131
loop1   66.8M loop squashfs /snap/core24/2124
loop2    1.5M loop squashfs /snap/hwctl/123
loop3   13.4M loop squashfs /snap/kubectl/3855
loop4   50.1M loop squashfs /snap/snapd/27710
loop5   66.8M loop squashfs /snap/core24/1643
loop6   63.8M loop squashfs /snap/core20/2922
loop7   44.7M loop squashfs /snap/snapd/28254
sda    465.8G disk          
├─sda1     1G part vfat     /boot/efi
└─sda2 464.7G part ext4     /
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda2       457G   79G  355G  19% /

```

