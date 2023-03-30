#!/bin/bash

ROOT="${PWD}"
REPOS=(
    'frameworks/base'
    'packages/apps/Settings'
)

for repo in "${REPOS[@]}"; do
    cd "${ROOT}/${repo}"

    git am --keep-cr "${ROOT}/patcher/lineage/${repo}"/*

    cd "${ROOT}"
done
