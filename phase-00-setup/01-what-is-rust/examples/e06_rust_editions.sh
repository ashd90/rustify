#!/usr/bin/env bash
# e06 — What are Rust Editions?
#
# Rust has "editions" — periodic snapshots of the language that allow
# breaking changes without breaking old code.
#
# Current editions: 2015, 2018, 2021, 2024 (latest)
#
# Key rule: ALL editions are compatible with each other.
# A crate on edition 2015 can depend on a crate on edition 2021.
# The edition only affects how YOUR code is compiled, not your dependencies.
#
# Analogy: like Unicode versions — you choose which rules apply to your
# document, but all documents can still exchange data.
#
# The edition is set in Cargo.toml:
#   [package]
#   edition = "2021"
#
# You will always use edition = "2021" in this curriculum.
# (2024 is very new; 2021 is the stable, widely-supported default)

echo "=== Rust editions overview ==="
echo ""
echo "Edition   Year   Key changes"
echo "-------   ----   -----------"
echo "2015      2015   Original stable release"
echo "2018      2018   Module system overhaul, async/await prep"
echo "2021      2021   Cleaner imports, better closures, disjoint captures"
echo "2024      2024   Latest (use 2021 for now)"
echo ""
echo "=== We will use edition 2021 throughout this curriculum ==="
