#!/bin/bash
# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2020 The LineageOS Project

set -e

# Required!
export DEVICE=beyond1qlte
export DEVICE_COMMON=sm8150-common
export VENDOR=samsung

export DEVICE_BRINGUP_YEAR=2020

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
