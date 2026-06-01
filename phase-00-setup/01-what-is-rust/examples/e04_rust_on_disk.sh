#!/usr/bin/env bash
# e04 — Where does Rust actually live on your system?
#
# rustup installs everything under ~/.rustup and ~/.cargo
#
# ~/.rustup/   = toolchains, components, channel metadata
# ~/.cargo/    = cargo itself, installed binaries, package cache

echo "=== Where rustup stores toolchains ==="
ls ~/.rustup/toolchains/

echo ""
echo "=== Where cargo lives ==="
ls ~/.cargo/bin/ | head -20

echo ""
echo "=== Which cargo is on your PATH ==="
which cargo
which rustc
which rustup

echo ""
echo "=== Total disk usage ==="
du -sh ~/.rustup ~/.cargo
