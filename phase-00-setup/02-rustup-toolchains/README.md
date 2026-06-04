# Topic 02: Rustup & Toolchains 🧰

## 🎯 Brief Overview
`rustup` is the official toolchain multiplexer for Rust. It manages different versions of the Rust compiler (`rustc`), the package manager (`cargo`), and standard libraries. It allows you to seamlessly switch between stable, beta, and nightly channels, and install target environments for cross-compilation.

---

## 🧠 Critical Technical Insights
> [!IMPORTANT]
> * **The Multiplexer Concept:** When you type `rustc` or `cargo` in your terminal, you are actually hitting a `rustup` proxy binary. This proxy checks which toolchain is active for your current directory and instantly forwards the command to the correct compiler version.
> * **Channels:** >   * `stable`: Released every 6 weeks. Production-ready.
>   * `nightly`: Built every night. Used for experimental features and bleeding-edge framework development (like writing OS kernels).
> * **Components:** Toolchains are modular. You can attach extra tools to them, such as `rust-src` (the standard library source code, essential for IDEs jumping to definitions) and `clippy` (the official linter).

---

## 💻 Essential Commands Reference

| Task | Command | Purpose |
| :--- | :--- | :--- |
| **Install Rustup** | `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs \| sh` | The official installation script. Modifies your `$PATH`. |
| **Update Toolchain** | `rustup update` | Upgrades your current toolchains to the latest releases. |
| **List Toolchains** | `rustup toolchain list` | Shows all installed compilers (stable, nightly, etc.). |
| **Add Component** | `rustup component add rust-analyzer` | Installs the Language Server Protocol (LSP) for your IDE. |
| **Check Active Version**| `rustup show` | Displays the active toolchain and its installed components. |
