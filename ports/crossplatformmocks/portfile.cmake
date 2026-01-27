vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO jackpoz/crossplatformmocks
    REF 5e59fef1cce9a26b5ecb63e6fc5a227df3542523
    SHA512 1157c6290fcfbfb545fbf3723d518331395973b3cbe83ccf20d54e3ec806c9d9daeb01021ecf02fe47ce59c4a40f4744b578239e47ab6dd4c46a7ed966829bf8
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME CrossplatformMocks)
