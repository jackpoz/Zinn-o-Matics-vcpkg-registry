vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO jackpoz/crossplatformmocks
    REF 659eb6b98c74e3df287b0accecf40a0a05627e96
    SHA512 215ff3ae7f758fae6742cef4424776e602618cfe1cf1b0acc0301e5fd100543783517428bd7d537e17f387ef6f62e5f1fe49d1c3fcf3a1a41758c03f015aff7f
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME CrossplatformMocks)
