#!/usr/bin/env bash
# e03 — cargo vs rustc: what is the difference?
#
# rustc = the raw compiler. Compiles a single .rs file.
# cargo = the project manager. Orchestrates rustc + deps + tests + docs.
#
# You almost never call rustc directly — cargo does it for you.
# Analogy: rustc is the engine, cargo is the car.

echo "=== rustc help (the raw compiler) ==="
rustc --help | head -20

echo ""
echo "=== cargo help (the project manager) ==="
cargo --help
