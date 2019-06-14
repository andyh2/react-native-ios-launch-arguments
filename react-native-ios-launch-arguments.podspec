require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-ios-launch-arguments"
  s.version      = package['version']
  s.summary      = package['description']

  s.homepage     = package['repository']['url']

  s.license      = package['license']
  s.authors      = package['author']
  s.ios.deployment_target = '8.0'

  s.source       = { :git => "https://github.com/andyh2/react-native-ios-launch-arguments.git" }

  s.source_files  = "ios/RNAppLaunchArguments/*.{h,m}"

  s.dependency 'React'
end