#!/bin/bash

ROOT="${PWD}"
REPOS=(
    'build/make'
    'build/soong'
    'external/tinycompress'
    'frameworks/base'
    'frameworks/native'
    'hardware/interfaces'
    'hardware/libhardware'
    'hardware/qcom-caf/wlan'
    'system/core'
    'system/security'
    'system/sepolicy'
    'system/vold'
    'vendor/hentai'
)

for repo in "${REPOS[@]}"; do
    cd "${ROOT}/${repo}"

    git am --keep-cr "${ROOT}/patcher/aosp/${repo}"/*

    cd "${ROOT}"
done
