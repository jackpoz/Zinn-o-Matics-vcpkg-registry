vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO jackpoz/arcdps-extension
    REF be52082a841a3da6cdb53e0c03183a9ce3252700
    SHA512 f225d24dd7fe97251cfd5311695e616169a29f9d5f88038cc54cf7571bdf310a1eb670904fe50966ced3895f71af3af8d342f3955bcc7b6c889c11e0a4dc0a06
    HEAD_REF crossplatform
)

vcpkg_check_features(OUT_FEATURE_OPTIONS FEATURE_OPTIONS
    FEATURES
	imgui				ARCDPS_EXTENSION_IMGUI
	unofficial-extras	ARCDPS_EXTENSION_UNOFFICIAL_EXTRAS
	curl                ARCDPS_EXTENSION_CURL
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
	OPTIONS
        ${FEATURE_OPTIONS}
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME ArcdpsExtension)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")

file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)
