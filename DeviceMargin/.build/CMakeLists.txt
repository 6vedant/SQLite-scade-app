cmake_minimum_required(VERSION 3.0)
project("DeviceMargin")
include(ScadeSDK)
add_scade_application("DeviceMargin" "com.scade.devicemargin"
	"${CMAKE_CURRENT_SOURCE_DIR}/.."
	USE_SPM
	APP_NAME "DeviceMargin"
	APP_SPM_NAME "DeviceMargin"
	APPLE_DISPLAY_NAME "DeviceMargin"
	ANDROID_DISPLAY_NAME "DeviceMargin"
	SOURCES
	"Sources/DeviceMargin/Extensions/Pages/main.page.ext.swift"
	"Sources/DeviceMargin/main.page.swift"
	"Sources/DeviceMargin/start.swift"

	RESOURCES
		RESOURCES_GROUP "Sources/DeviceMargin" NOPREFIX
			"main.page.svg"
			"main.page"
		RESOURCES_GROUP NOBASE NOPREFIX

	IOS_EXPORT_METHOD "ad-hoc"
	MACOS_PLIST_PROPERTIES
		"NSLocationWhenInUseUsageDescription" STRING ""
		"NSCameraUsageDescription" STRING "Take pictures from camera"
		"NSPhotoLibraryUsageDescription" STRING "Choose a photo from your library"
		"CFBundleShortVersionString" STRING "1.0"
		"CFBundleVersion" STRING "1"

		"UIDeviceFamily" ARRAY
			INT "1"
		ARRAY_END
		"UISupportedInterfaceOrientations" ARRAY
			STRING "UIInterfaceOrientationPortrait"
		ARRAY_END
		"UISupportedInterfaceOrientations~ipad" ARRAY
			STRING "UIInterfaceOrientationPortrait"
		ARRAY_END

)


set_property(TARGET DeviceMargin PROPERTY ANDROID_VERSION_NAME "1.0.0")
set_property(TARGET DeviceMargin PROPERTY ANDROID_VERSION_CODE "1")


