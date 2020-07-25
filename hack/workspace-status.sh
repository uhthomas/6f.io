#!/bin/sh

cat <<EOF
STABLE_GIT_COMMIT $(git rev-parse head)
STABLE_GIT_TAG $(git tag --points-at head)
EOF
