// e01_hello_rust.rs
// Our very first Rust program demonstrating basic syntax and the compiler.

// `fn` declares a new function.
// `main` is the entry point of every executable Rust program.
fn main() {
    // println! is a MACRO that prints text to the console.
    // The '!' denotes that it is a macro, not a standard function.
    println!("Hello, Systems Engineer. Welcome to Rust.");
    
    // Let's print a number to show basic formatting
    let year = 2026;
    println!("The current year is: {}", year);
}
