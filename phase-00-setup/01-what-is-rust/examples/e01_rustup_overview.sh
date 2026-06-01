#!/usr/bin/env bash
# e01 — What does rustup actually manage?
# Run: bash e01_rustup_overview.sh

echo "=== Active toolchain ==="
rustup show active-toolchain

echo ""
echo "=== All installed toolchains ==="
rustup toolchain list

echo ""
echo "=== Installed components ==="
rustup component list --installed

echo ""
echo "=== Rust version ==="
rustc --version

echo ""
echo "=== Cargo version ==="
cargo --version
