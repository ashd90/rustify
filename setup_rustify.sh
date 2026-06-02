#!/usr/bin/env bash
set -e

BASE="$HOME/repoHive/rustify"
echo ""
echo "  Rustify -- directory scaffolding"
echo "  Target: $BASE"
echo ""

PHASE_TOPICS_00="01-what-is-rust 02-rustup-toolchains 03-cargo-basics 04-ide-setup 05-rust-playground 06-rustfmt-clippy"
PHASE_TOPICS_01="01-variables-mutability 02-data-types 03-compound-types 04-control-flow 05-functions 06-pattern-matching"
PHASE_TOPICS_02="01-primitives 02-string-str 03-vec 04-hashmap-hashset 05-linked-list-queue-stack 06-btree-binaryheap"
PHASE_TOPICS_03="01-ownership-rules 02-move-clone-copy 03-references-borrowing 04-mutable-references 05-slices 06-stack-vs-heap"
PHASE_TOPICS_04="01-structs 02-impl-blocks 03-enums 04-option 05-match 06-destructuring"
PHASE_TOPICS_05="01-option-result 02-question-mark-operator 03-unwrap-expect 04-custom-errors 05-error-trait 06-thiserror-anyhow"
PHASE_TOPICS_06="01-trait-definitions 02-default-impl 03-trait-objects 04-trait-bounds 05-associated-types 06-generics"
PHASE_TOPICS_07="01-why-lifetimes 02-lifetime-annotations 03-lifetimes-in-structs 04-elision-rules 05-static-lifetime 06-covariant-contravariant"
PHASE_TOPICS_08="01-closure-basics 02-capturing-environment 03-fn-fnmut-fnonce 04-iterator-trait 05-iterator-adaptors 06-custom-iterators"
PHASE_TOPICS_09="01-box 02-rc 03-arc 04-weak 05-refcell-cell 06-deref-drop"
PHASE_TOPICS_10="01-threads 02-move-closures 03-channels 04-mutex-rwlock 05-atomic-operations 06-rayon"
PHASE_TOPICS_11="01-futures 02-async-await 03-pin-unpin 04-tokio-basics 05-tokio-sync 06-streams"
PHASE_TOPICS_12="01-modules 02-pub-use 03-cargo-toml 04-workspaces 05-testing 06-publishing"
PHASE_TOPICS_13="01-macro-rules 02-repetition-patterns 03-built-in-macros 04-custom-derive 05-attribute-macros 06-dsls"
PHASE_TOPICS_14="01-unsafe-blocks 02-raw-pointers 03-unsafe-traits 04-extern-c 05-calling-c-from-rust 06-bindgen"
PHASE_TOPICS_15="01-axum 02-sqlx-diesel 03-serde 04-clap-cli 05-wasm 06-embedded"
PHASE_TOPICS_16="01-os-concepts-in-rust 02-linux-kernel-modules 03-device-drivers 04-memory-mapped-io 05-system-calls 06-filesystems 07-interrupt-handling 08-process-scheduling 09-embedded-no-std 10-rtos-rust"

PHASES="
  phase-00-setup
  phase-01-basics
  phase-02-data-structures
  phase-03-ownership
  phase-04-structs-enums
  phase-05-error-handling
  phase-06-traits-generics
  phase-07-lifetimes
  phase-08-closures-iterators
  phase-09-smart-pointers
  phase-10-concurrency
  phase-11-async
  phase-12-modules-cargo
  phase-13-macros
  phase-14-unsafe-ffi
  phase-15-ecosystem
  phase-16-os-systems
"

mkdir -p "$BASE"

for phase in $PHASES; do
  phase_dir="$BASE/$phase"
  mkdir -p "$phase_dir"
  touch "$phase_dir/README.md"

  suffix="${phase#phase-}"
  num="${suffix%%-*}"
  var="PHASE_TOPICS_${num}"
  topics="${!var}"

  for topic in $topics; do
    topic_dir="$phase_dir/$topic"
    mkdir -p "$topic_dir/examples"
    mkdir -p "$topic_dir/project"
    touch "$topic_dir/README.md"
    for n in 01 02 03 04 05 06; do
      touch "$topic_dir/examples/e${n}_placeholder.rs"
    done
    touch "$topic_dir/project/main.rs"
  done

  echo "  [ok] $phase"
done

echo ""
echo "  Done."
printf "  Directories : %s\n" "$(find "$BASE" -type d | wc -l)"
printf "  Files       : %s\n" "$(find "$BASE" -type f | wc -l)"
echo ""
echo "  Next: git add . && git commit"
