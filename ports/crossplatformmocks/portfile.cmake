vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO jackpoz/crossplatformmocks
    REF 0967caad13b2135dcb6b8163a9079e5bede830f3
    SHA512 507b1a899a6d0a03a8812cc8d85cbe7bee4e58f49c4728536c02e242b505f22786bf0db6924b3b6420189eab323b595f66b8ac8aecf21413b07f7c4b78f454ff
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME CrossplatformMocks)
