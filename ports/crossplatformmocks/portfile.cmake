vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO jackpoz/crossplatformmocks
    REF ac3250a6c3e177088479036a6d4334fbef2b1e11
    SHA512 2eeea5d2535e525b8adfee2041dd0634ce25a2adfb70a7dbd4c4a2cc9a13e8ee513d146d206824834f33a2817756bfcb0b25fd2770a1772327d7ba93bea49431
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME CrossplatformMocks)
