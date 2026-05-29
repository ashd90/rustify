# 🦀 Rustify

A structured, project-based curriculum for mastering the Rust programming language from scratch — following the complete [roadmap.sh/rust](https://roadmap.sh/rust) path.

---

## About This Repository

This repository is a personal learning journal and code workspace for a deep, hands-on Rust curriculum. Each phase covers specific concepts with theory, real-world analogies, 5–6 examples per topic, and a capstone project. No concept is skipped. No phase begins without mastering the previous one.

**Learner:** Ashish
**OS:** CachyOS Linux (Arch-based)
**Shell:** bash / zsh
**Editor:** VSCode / Neovim (rust-analyzer)
**Rust Toolchain:** managed via rustup

---

## Folder Convention

Every topic inside every phase follows the **same structure**:
Each topic `README.md` contains:
- **Theory** — what the concept is and why it exists
- **Real-world analogy** — a plain-language mental model
- **Commands used** — every cargo/rustc command for the topic
- **FAQ** — common mistakes and confusions

---

## Directory Structure
---

## Initial Setup (CachyOS / Arch Linux)

### 1. Install Rust

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustc --version && cargo --version
```

### 2. Add essential components

```bash
rustup component add rust-analyzer rustfmt clippy
cargo install cargo-watch cargo-expand
```

### 3. Run the one-command scaffold

```bash
bash setup_rustify.sh
```

Creates 16 phases × 6 topics × (README + 6 examples + project) — 304 folders, 784 files.

---

## Curriculum Overview

| # | Phase | Key Topics | Est. Time |
|---|-------|-----------|-----------|
| 0  | Environment Setup           | rustup, cargo, toolchains, IDE, clippy         | ~2 days     |
| 1  | Language Basics             | variables, types, control flow, functions      | ~2 weeks    |
| 2  | Data Structures             | Vec, HashMap, BTree, BinaryHeap, LinkedList    | ~2 weeks    |
| 3  | Ownership System            | ownership, borrowing, slices, stack vs heap    | ~2 weeks    |
| 4  | Structs, Enums & Patterns   | structs, impl, enums, match, destructuring     | ~2 weeks    |
| 5  | Error Handling              | Result, Option, ?, custom errors, thiserror    | ~1.5 weeks  |
| 6  | Traits & Generics           | trait defs, bounds, objects, associated types  | ~2 weeks    |
| 7  | Lifetimes                   | annotations, elision, static, variance         | ~2 weeks    |
| 8  | Closures & Iterators        | Fn traits, Iterator, adaptors, lazy eval       | ~2 weeks    |
| 9  | Smart Pointers              | Box, Rc, Arc, Weak, RefCell, Deref, Drop       | ~2 weeks    |
| 10 | Concurrency                 | threads, channels, Mutex, atomics, Rayon       | ~2 weeks    |
| 11 | Async Rust                  | Future, async/await, Pin, Tokio, streams       | ~2.5 weeks  |
| 12 | Modules & Cargo             | modules, workspaces, testing, publishing       | ~1.5 weeks  |
| 13 | Macros                      | macro_rules!, proc macros, derive, DSLs        | ~2 weeks    |
| 14 | Unsafe & FFI                | unsafe, raw pointers, extern C, bindgen        | ~1.5 weeks  |
| 15 | Ecosystem                   | Axum, sqlx, serde, clap, WASM, embedded        | ~3+ weeks   |

**Total: ~30–35 weeks of deep, project-based learning**

---

## Learning Rules

1. Theory + real-world analogy before any code.
2. 5–6 examples per topic before the capstone project.
3. No phase begins without explicit permission.
4. READMEs are written dynamically as we learn.
5. Mastery confirmed before moving forward.

---

## Progress Tracker

- [x] Repository initialized
- [x] Folder structure created (setup_rustify.sh)
- [ ] Phase 0  — Environment Setup
- [ ] Phase 1  — Language Basics
- [ ] Phase 2  — Data Structures
- [ ] Phase 3  — Ownership System
- [ ] Phase 4  — Structs, Enums & Pattern Matching
- [ ] Phase 5  — Error Handling
- [ ] Phase 6  — Traits & Generics
- [ ] Phase 7  — Lifetimes
- [ ] Phase 8  — Closures & Iterators
- [ ] Phase 9  — Smart Pointers
- [ ] Phase 10 — Concurrency
- [ ] Phase 11 — Async Rust
- [ ] Phase 12 — Modules & Cargo
- [ ] Phase 13 — Macros
- [ ] Phase 14 — Unsafe & FFI
- [ ] Phase 15 — Ecosystem

---

*Built with patience, one topic at a time. 🦀*
