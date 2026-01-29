vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO jackpoz/crossplatformmocks
    REF dc37c5c4b57a8b91b1dedc3d344b715a3c00a14e
    SHA512 dafa15220168c44f7d3f2c965524b442697ab7809fa9047131d486cc83c1464e9d00f4daa91743784fc986a5f4ef2b2e07d8212a19ac2eab28dd042d08c41a36
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME CrossplatformMocks)
