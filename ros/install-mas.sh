#!/usr/bin/env bash
# Ensure the fkie-multi-agent-suite is installed (daemon, discovery, msgs, pylib
# and the GUI). Called by the `mas-backends` shell function before launching, so
# the fast path (everything present) must stay cheap — it only runs apt when a
# package is actually missing. Distro is taken from $ROS_DISTRO (default humble).
set -euo pipefail

distro="${ROS_DISTRO:-humble}"

required=(
    "fkie-mas-gui"
    "ros-${distro}-fkie-mas-daemon"
    "ros-${distro}-fkie-mas-discovery"
    "ros-${distro}-fkie-mas-msgs"
    "ros-${distro}-fkie-mas-pylib"
)

missing=()
for pkg in "${required[@]}"; do
    dpkg -s "$pkg" >/dev/null 2>&1 || missing+=("$pkg")
done

# Fast path: nothing to do.
[ "${#missing[@]}" -eq 0 ] && exit 0

echo "fkie-multi-agent-suite: installing missing packages: ${missing[*]}" >&2
sudo apt-get update
sudo apt-get install -y "${missing[@]}"
