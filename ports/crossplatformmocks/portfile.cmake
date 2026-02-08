vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO jackpoz/crossplatformmocks
    REF 13261d379a4581d9535f26c7137ee6e05c33e63c
    SHA512 15bcd9163b3f03fad8e8150c25bf3811921fb5bb3e10850b1576c9d0aefe942c4c67978fa096702473e68b442217a15845ab9b6042e062f135d396bc7333312e
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME CrossplatformMocks)
