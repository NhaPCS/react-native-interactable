require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "Interactable"
  s.version      = package["version"]
  s.summary      = package["description"]

  s.homepage     = "https://github.com/NhaPCS/react-native-bottomsheet-native"

  s.license      = "MIT"
  s.authors      = package["author"]
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/NhaPCS/react-native-bottomsheet-native" }
  s.source_files  = "lib/ios/Interactable/*.{h,m}"

  s.dependency 'React'
end
