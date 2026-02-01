vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO jackpoz/crossplatformmocks
    REF aa41b9575bf5cadf310ac656c8fef9c03978ed02
    SHA512 69de5b468f70fc00526697c35abf32f760cc71ecfefd08724fea79afa992033f03a4069f25123a26aab8dccfdcff8838cd0d3681d5f60f2c38c95909af861380
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME CrossplatformMocks)
