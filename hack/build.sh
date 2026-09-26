#!/bin/sh
set -eu

cd "$(dirname "$0")/.."

mdbook_version=0.5.0
mkdir -p .cache/mdbook
curl -fsSL --retry 3 \
    "https://github.com/rust-lang/mdBook/releases/download/v${mdbook_version}/mdbook-v${mdbook_version}-x86_64-unknown-linux-musl.tar.gz" \
    --output .cache/mdbook/mdbook.tar.gz
tar -xzf .cache/mdbook/mdbook.tar.gz -C .cache/mdbook mdbook

exec .cache/mdbook/mdbook build
