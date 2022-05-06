file(REMOVE_RECURSE
  "DeviceMargin.app/DeviceMargin"
  "DeviceMargin.pdb"
  "DeviceMargin.swiftbuild/Applications/Scade.app/Contents/PlugIns/ScadeSDK.plugin/Contents/Resources/Libraries/ScadeSDK/cmake/projects/empty.swift.o"
  "DeviceMargin.swiftbuild/Applications/Scade.app/Contents/PlugIns/ScadeSDK.plugin/Contents/Resources/Libraries/ScadeSDK/lib/iphonesimulator/src/AppDelegate.swift.o"
  "DeviceMargin.swiftbuild/Applications/Scade.app/Contents/PlugIns/ScadeSDK.plugin/Contents/Resources/Libraries/ScadeSDK/lib/iphonesimulator/src/ViewController.swift.o"
  "DeviceMargin.swiftinterface"
  "DeviceMargin.swiftmodule"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/DeviceMargin.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
