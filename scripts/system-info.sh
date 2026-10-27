#!/usr/bin/env bash
# Collect basic system specifications for documentation.
# Review the output before publishing; hostnames and device details may be sensitive.
set -u

section() {
  printf '\n## %s\n' "$1"
}

section "Operating system"
if [[ -r /etc/os-release ]]; then
  . /etc/os-release
  printf 'Name: %s\n' "${PRETTY_NAME:-unknown}"
fi

section "Kernel and architecture"
uname -srmo

section "CPU"
if command -v lscpu >/dev/null 2>&1; then
  lscpu | grep -E '^(Architecture|CPU\\(s\\)|Model name|Thread\\(s\\) per core|Core\\(s\\) per socket):' || true
fi

section "Memory"
free -h

section "Root filesystem"
df -h /

section "Block devices"
lsblk -o NAME,SIZE,TYPE,FSTYPE,MOUNTPOINTS

printf '\nReview output for sensitive details before adding it to a public repository.\n'
