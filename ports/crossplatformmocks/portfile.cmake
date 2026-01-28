vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO jackpoz/crossplatformmocks
    REF 2cccfc2e1124bcf88560e07fcdd903ce94acbd49
    SHA512 ce84c727ce397840849035f929b3f928f1d35e67aacea7785a941c703bb2d1dd393363dce14ca275588046c18070499b9014519de67e815faecaba31f8a5cc4e
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME CrossplatformMocks)
