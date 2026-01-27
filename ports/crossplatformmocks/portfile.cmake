vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO jackpoz/crossplatformmocks
    REF fa21be73656535156364d0a20b6bbd820843d31e
    SHA512 e50fa0e250ef275d2906267848740ecbb25554ed8ccaaf082a1e7e12cdd04dfa1076904dfe73117e21e3b0054e6a2d4c79ed6044aebb9554994e0d8926fdaaf5
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME CrossplatformMocks)
