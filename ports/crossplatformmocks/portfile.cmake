vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO jackpoz/crossplatformmocks
    REF f2762281959f2e65fd162265e49e60479047436b
    SHA512 861fb288c72e474d1a66c349eb4d6e7c58673949b2a2bf9b8a251c1f2ec4c58599f079d2c3cf73664d28f13921fd1041fe00caf1a0c39a08dab0fce350a74a70
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME CrossplatformMocks)
