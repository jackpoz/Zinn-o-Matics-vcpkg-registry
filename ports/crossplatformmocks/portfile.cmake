vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO jackpoz/crossplatformmocks
    REF c3612d024af5ccbf3478749a61436cce0db9961b
    SHA512 7306b3c0c8762cfdc428a7f5810be1766cbba61bb977620f93e7f4808796badd1ce2c973fa17f6d60999567e78c2093c2161b20a13c545c8b34e41ad05ec4094
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME CrossplatformMocks)
