# 🦀 Rustify

A structured, project-based curriculum for mastering the Rust programming language from scratch — following the complete [roadmap.sh/rust](https://roadmap.sh/rust) path.

---

## About This Repository

This repository is a personal learning journal and code workspace for a deep, hands-on Rust curriculum. Each phase covers specific concepts with theory, real-world analogies, 5–6 examples per topic, and a capstone project. No concept is skipped. No phase begins without mastering the previous one.

| Field | Detail |
|-------|--------|
| **Learner** | Ashish |
| **OS** | CachyOS Linux (Arch-based) |
| **Shell** | bash / zsh |
| **Editor** | VSCode / Neovim (rust-analyzer) |
| **Toolchain** | managed via rustup |

---

## Folder Convention

Every topic inside every phase follows the **same structure**:

```text
<topic-folder>/
├── README.md          ← theory, real-world analogy, commands used, FAQ
├── examples/
│   ├── e01_<name>.rs
│   ├── e02_<name>.rs
│   ├── e03_<name>.rs
│   ├── e04_<name>.rs
│   ├── e05_<name>.rs
│   └── e06_<name>.rs
└── project/
    └── main.rs
```

Each topic `README.md` contains:

- **Theory** — what the concept is and why it exists
- **Real-world analogy** — a plain-language mental model
- **Commands used** — every `cargo` / `rustc` command for the topic
- **FAQ** — common mistakes and confusions

---

## Directory Structure

```text
rustify/
├── README.md
├── setup_rustify.sh
│
├── phase-00-setup/
│   ├── 01-what-is-rust/
│   ├── 02-rustup-toolchains/
│   ├── 03-cargo-basics/
│   ├── 04-ide-setup/
│   ├── 05-rust-playground/
│   └── 06-rustfmt-clippy/
│
├── phase-01-basics/
│   ├── 01-variables-mutability/
│   ├── 02-data-types/
│   ├── 03-compound-types/
│   ├── 04-control-flow/
│   ├── 05-functions/
│   └── 06-pattern-matching/
│
├── phase-02-data-structures/
│   ├── 01-primitives/
│   ├── 02-string-str/
│   ├── 03-vec/
│   ├── 04-hashmap-hashset/
│   ├── 05-linked-list-queue-stack/
│   └── 06-btree-binaryheap/
│
├── phase-03-ownership/
│   ├── 01-ownership-rules/
│   ├── 02-move-clone-copy/
│   ├── 03-references-borrowing/
│   ├── 04-mutable-references/
│   ├── 05-slices/
│   └── 06-stack-vs-heap/
│
├── phase-04-structs-enums/
│   ├── 01-structs/
│   ├── 02-impl-blocks/
│   ├── 03-enums/
│   ├── 04-option/
│   ├── 05-match/
│   └── 06-destructuring/
│
├── phase-05-error-handling/
│   ├── 01-option-result/
│   ├── 02-question-mark-operator/
│   ├── 03-unwrap-expect/
│   ├── 04-custom-errors/
│   ├── 05-error-trait/
│   └── 06-thiserror-anyhow/
│
├── phase-06-traits-generics/
│   ├── 01-trait-definitions/
│   ├── 02-default-impl/
│   ├── 03-trait-objects/
│   ├── 04-trait-bounds/
│   ├── 05-associated-types/
│   └── 06-generics/
│
├── phase-07-lifetimes/
│   ├── 01-why-lifetimes/
│   ├── 02-lifetime-annotations/
│   ├── 03-lifetimes-in-structs/
│   ├── 04-elision-rules/
│   ├── 05-static-lifetime/
│   └── 06-covariant-contravariant/
│
├── phase-08-closures-iterators/
│   ├── 01-closure-basics/
│   ├── 02-capturing-environment/
│   ├── 03-fn-fnmut-fnonce/
│   ├── 04-iterator-trait/
│   ├── 05-iterator-adaptors/
│   └── 06-custom-iterators/
│
├── phase-09-smart-pointers/
│   ├── 01-box/
│   ├── 02-rc/
│   ├── 03-arc/
│   ├── 04-weak/
│   ├── 05-refcell-cell/
│   └── 06-deref-drop/
│
├── phase-10-concurrency/
│   ├── 01-threads/
│   ├── 02-move-closures/
│   ├── 03-channels/
│   ├── 04-mutex-rwlock/
│   ├── 05-atomic-operations/
│   └── 06-rayon/
│
├── phase-11-async/
│   ├── 01-futures/
│   ├── 02-async-await/
│   ├── 03-pin-unpin/
│   ├── 04-tokio-basics/
│   ├── 05-tokio-sync/
│   └── 06-streams/
│
├── phase-12-modules-cargo/
│   ├── 01-modules/
│   ├── 02-pub-use/
│   ├── 03-cargo-toml/
│   ├── 04-workspaces/
│   ├── 05-testing/
│   └── 06-publishing/
│
├── phase-13-macros/
│   ├── 01-macro-rules/
│   ├── 02-repetition-patterns/
│   ├── 03-built-in-macros/
│   ├── 04-custom-derive/
│   ├── 05-attribute-macros/
│   └── 06-dsls/
│
├── phase-14-unsafe-ffi/
│   ├── 01-unsafe-blocks/
│   ├── 02-raw-pointers/
│   ├── 03-unsafe-traits/
│   ├── 04-extern-c/
│   ├── 05-calling-c-from-rust/
│   └── 06-bindgen/
│
└── phase-15-ecosystem/
    ├── 01-axum/
    ├── 02-sqlx-diesel/
    ├── 03-serde/
    ├── 04-clap-cli/
    ├── 05-wasm/
    └── 06-embedded/
```

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
