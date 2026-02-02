vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO jackpoz/crossplatformmocks
    REF 2972ddab6ddbe343553e73036626949a11f40fba
    SHA512 3d9d9c850d685b1fd3fabc23aca946a353952bf8feb1dd1d35d9b94b44350f7732cd4f27085368754ad2242065c34c85c0d4e2c415f4cd53a401326c7a7d5645
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup(PACKAGE_NAME CrossplatformMocks)
