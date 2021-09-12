#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint meiqia_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'meiqia_flutter'
  s.version          = '0.0.1'
  s.summary          = '美洽客服flutter plugin'
  s.description      = <<-DESC
meiqia_flutter
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Mocaris' => 'imocaris@outlook.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'Meiqia', '3.6.8'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
