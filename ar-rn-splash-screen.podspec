require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "ar-rn-splash-screen"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.author       = 'fgl'
  s.license      = package["license"]
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Fgl/react-native-splash-screen", :tag => "v#{s.version}" }
  s.source_files  = "ios/*.{h,m}"
  s.dependency "React"
end
