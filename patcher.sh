#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
	'frameworks/base'
	'vendor/lineage'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/lineage/${repository}"/*

    cd "${ROOT}"
done
