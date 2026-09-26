#!/bin/sh
set -eu

cd "$(dirname "$0")/.."

./hack/build.sh

set --
if [ -t 0 ] && [ -t 1 ]; then
    set -- --interactive --tty
fi

exec docker run --rm --init "$@" \
    --user "$(id -u):$(id -g)" \
    --publish 127.0.0.1:8000:8080 \
    --volume "$PWD/dist:/dist:ro" \
    svenstaro/miniserve:0.35.0-alpine \
    --interfaces 0.0.0.0 --port 8080 --index index.html --pretty-urls /dist
