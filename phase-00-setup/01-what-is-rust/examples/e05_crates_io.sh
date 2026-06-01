#!/usr/bin/env bash
# e05 — What is crates.io and how does Cargo use it?
#
# crates.io = the official Rust package registry
# A "crate" = a Rust package (library or binary)
#
# Analogy:
#   crates.io   = npm (Node) = PyPI (Python) = Maven Central (Java)
#   Cargo.toml  = package.json = requirements.txt = pom.xml
#
# When you add a dependency in Cargo.toml, cargo fetches it from crates.io
# and caches it in ~/.cargo/registry/

echo "=== Cargo's local package cache ==="
ls ~/.cargo/registry/ 2>/dev/null || echo "(empty — no packages downloaded yet)"

echo ""
echo "=== How you would search for a package ==="
echo "cargo search serde"
echo "(we won't run this now, but that's how you search crates.io from terminal)"

echo ""
echo "=== Key facts about crates ==="
echo "- A 'crate' is a compiled Rust package (library or executable)"
echo "- crates.io hosts 140,000+ crates as of 2024"
echo "- serde (serialization) has 300M+ downloads"
echo "- Dependencies declared in [dependencies] section of Cargo.toml"
