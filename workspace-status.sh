#!/bin/sh

cat <<EOF
GIT_COMMIT $(git rev-parse head)
GIT_TAG $(git tag --points-at head)
EOF
