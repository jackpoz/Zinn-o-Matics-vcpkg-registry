vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO jackpoz/crossplatformmocks
    REF 429caa392b962f706dc97e2aecd5deb0b9964c97
    SHA512 4c6f32519ed4a95c7946c5052bbb4a0bf1179549272c24a51bf1bd7836523cb31a8d8314ba0121b02c69a6cdbd5a74b2ce9c48676e83b56edd112afa024c8ca6
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME CrossplatformMocks)
