# Topic 01 — What is Rust & Why Does It Exist

## Theory

Rust is a systems programming language focused on three goals:
- Speed (no garbage collector, zero-cost abstractions)
- Safety (memory safety enforced at compile time by the borrow checker)
- Concurrency (data races are impossible in safe Rust)

It was created at Mozilla Research by Graydon Hoare (2010), reached 1.0 in 2015,
and is now governed by the Rust Foundation.

## The Rust Toolchain — What You Actually Install

| Tool | Role | How you use it |
|---|---|---|
| rustup | Toolchain installer & version manager | Install once, manages everything else |
| rustc | The compiler | Rarely directly — cargo calls it for you |
| cargo | Build system + package manager | Every day: cargo build, run, test |
| rust-analyzer | Language server (editor intelligence) | Runs in background inside your editor |
| rustfmt | Code formatter | cargo fmt |
| clippy | Linter | cargo clippy |

## Release Channels

| Channel | Stability | Release cadence |
|---|---|---|
| stable | Production-ready | Every 6 weeks |
| beta | Release candidate | Continuous |
| nightly | Experimental | Every night |

We use STABLE throughout this curriculum.

## Real-World Analogy

rustup = App Store (manages and installs everything)
rustc  = OS kernel (does the real work, rarely touched directly)
cargo  = App launcher (your daily driver)
clippy = Grammar teacher (tells you how to write better)
rustfmt = Auto-correct (formats code consistently)

## Key Mental Models

1. You install rustup — rustup installs everything else.
2. You talk to cargo — cargo talks to rustc.
3. Cargo.toml is your project manifest (like package.json in Node).
4. Stable = production. Nightly = experimental. Use stable.

## FAQ

Q: Do I need to install rustc separately?
A: No. rustup installs rustc, cargo, and standard library together.

Q: Can I have multiple Rust versions installed?
A: Yes. rustup manages multiple toolchains side by side.

Q: What is crates.io?
A: The official Rust package registry — like npm for Node or PyPI for Python.

Q: Why does Rust compile slowly?
A: The compiler does extensive analysis (borrow checking, monomorphization,
   LLVM optimisation). This is a deliberate trade-off: slower compile,
   faster and safer runtime.
