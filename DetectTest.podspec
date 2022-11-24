#
# Be sure to run `pod lib lint DetectTest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DetectTest'
  s.version          = '0.1.7'
  s.summary          = 'test......'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: iiiiiiii
                       DESC

  s.homepage         = 'https://github.com/tttsymq/DetectTest'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cihui' => 'txwz8812@163.com' }
  s.source           = { :git => 'https://github.com/tttsymq/DetectTest.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
#  s.library = "z"
  s.libraries   = 'resolv','z','c++.1','c++abi','z.1.2.8'
  s.ios.deployment_target = '9.0'
  s.vendored_frameworks =  'framework/*.{framework}'
  s.resource = 'framework/*.{bundle}'
#  s.source_files = 'DetectTest/Classes/**/*'
  s.frameworks = 'CoreGraphics', 'Accelerate','SystemConfiguration','AssetsLibrary','CoreTelephony','QuartzCore','CoreFoundation','CoreLocation','ImageIO','CoreMedia','CoreMotion','AVFoundation','WebKit','AudioToolbox','CFNetwork','MobileCoreServices','AdSupport'
#   s.resource_bundles = {
#     'DetectTest' => ['DetectTest/framework/*.{framework}/*.{bundle}']
#   }
  
#  s.xcconfig = {
##      'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libresolv $(SDKROOT)/usr/include/libz $(SDKROOT)/usr/include/libc++.1 $(SDKROOT)/usr/include/libc++abi $(SDKROOT)/usr/include/libz.1.2.8',
#  }

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = {
       'OTHER_LDFLAGS' => ['-lObjC'],
       'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
   }

#   s.pod_target_xcconfig = {
#       "LIBRARY_SEARCH_PATHS" => [
#             "$(inherited)",
#             '-ObjC',
#             '-weak_library -l"Feature"'
#           ],
#       "SWIFT_INCLUDE_PATHS" => [
#           "$(inherited)",
#           '-ObjC',
#           '-weak_library -l"Feature"'
#       ],
#   }
  s.pod_target_xcconfig = {
      'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/DetectTest/framework',
      'OTHER_LDFLAGS' => ['$(inherited)' ,'-undefined dynamic_lookup' '-ObjC']
  }

  
#  s.pod_target_xcconfig = {
##           'ENABLE_BITCODE' => 'NO',
#          'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/DetectTest/framework',
#          'OTHER_LDFLAGS' => ['-ObjC' , '$(inherited)']
#        }
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
