#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint vnpt_ekyc.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'vnpt_ekyc'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin project.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'QuanHH' => 'quanhh.nang@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
  s.preserve_paths = 'SDK/*'
  s.xcconfig = { 'other_ldflags' => '-framework Alamofire -framework Base58Swift -framework BigInt -framework FinalSDK -xcframework ObjectMapper -framework SipHash -framework SWMessages -framework TensorFlowLite -framework TensorFlowLiteC ' }
  s.vendored_frameworks = 'SDK/Alamofire.framework', 'SDK/Base58Swift.framework', 'SDK/BigInt.framework', 'SDK/FinalSDK.xcframework', 'SDK/ObjectMapper.framework', 'SDK/SipHash.framework', 'SDK/SWMessages.framework', 'SDK/TensorFlowLite.framework', 'SDK/TensorFlowLiteC.framework'
end
