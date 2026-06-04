# Topic 06: rustfmt & clippy 🧹

## 🎯 Brief Overview
`rustfmt` and `clippy` are the official formatting and linting tools of the Rust ecosystem. They enforce a universal community style and catch common mistakes, performance pitfalls, and unidiomatic patterns before your code ever goes to production.

---

## 🧠 Critical Technical Insights
> [!IMPORTANT]
> * **Zero-Debate Culture:** Because `rustfmt` is the community standard, teams do not debate code style. If `cargo fmt` formats it that way, that is the way it stays. 
> * **Clippy Levels:** Clippy lints are categorized into distinct levels: `allow`, `warn`, `deny`, and `forbid`. You can configure these in your code using attributes (e.g., `#![warn(clippy::pedantic)]`) to enforce extremely strict engineering standards.
> * **IDE Integration:** Your LazyVim `rust-analyzer` setup runs Clippy in the background by default. Those yellow squiggly lines you will see in your editor are often Clippy offering you a better way to write your logic.

---

## 💻 Essential Commands Reference

| Task | Command | Purpose |
| :--- | :--- | :--- |
| **Format Code** | `cargo fmt` | Automatically formats all Rust files in your current Cargo workspace. |
| **Check Format** | `cargo fmt -- --check` | Fails if the code is unformatted. (Highly useful for CI/CD pipelines). |
| **Run Linter** | `cargo clippy` | Analyzes your code and outputs warnings for unidiomatic patterns. |
| **Auto-Fix** | `cargo clippy --fix` | Automatically applies Clippy's suggested fixes to your source code where possible. |
