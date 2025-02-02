require 'json'
pkg = JSON.parse(File.read("package.json"))

Pod::Spec.new do |s|
  s.name         = pkg["name"]
  s.version      = pkg["version"]
  s.summary      = pkg["description"]
  s.requires_arc = true
  s.license      = pkg["license"]
  s.homepage     = "https://github.com/yoman07/react-native-photos-framework"
  s.author       = pkg["author"]
  s.source       = { :git => pkg["repository"]["url"],
                     :tag => "v" + pkg["version"] }
  s.source_files = 'ios/**/*.{h,m}'
  s.platform     = :ios, "9.0"
end
