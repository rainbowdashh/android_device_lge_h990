#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.main import ExtractUtils, ExtractUtilsModule

common = ExtractUtils.get_module('v20-common', 'lge')

module = ExtractUtilsModule(
    'h990',
    'lge',
    blob_fixups=common.blob_fixups,
    lib_fixups=common.lib_fixups,
    namespace_imports=common.namespace_imports + ['vendor/lge/v20-common'],
)

if __name__ == '__main__':
    ExtractUtils.device_with_commons(
        module, [('v20-common',), ('msm8996-common',)]
    ).run()
