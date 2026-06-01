#!/usr/bin/env bash
# e02 — Rust toolchain names follow a pattern:
# <channel>-<cpu-arch>-<vendor>-<os>-<abi>
#
# Example: stable-x86_64-unknown-linux-gnu
#          ^      ^      ^       ^     ^
#          |      |      |       |     ABI (gnu libc)
#          |      |      |       OS
#          |      |      Vendor (unknown = community build)
#          |      CPU architecture
#          Release channel

echo "=== Your full target triple ==="
rustc -vV

echo ""
echo "=== What each part means ==="
echo "stable         → release channel"
echo "x86_64         → your CPU architecture (64-bit Intel/AMD)"
echo "unknown        → vendor (community/generic build)"
echo "linux          → operating system"
echo "gnu            → ABI (uses glibc — standard on CachyOS/Arch)"
