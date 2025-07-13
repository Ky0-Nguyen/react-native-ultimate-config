require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))
folly_compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32'

Pod::Spec.new do |s|
  s.name         = "react-native-ultimate-config"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-ultimate-config
                   DESC
  s.homepage     = "https://github.com/maxkomarychev/react-native-ultimate-config"
  s.license      = "MIT"
  s.authors      = { "Your Name" => "maxkomarychev@gmail.com" }
  s.platforms    = { :ios => "11.0" }
  s.source       = { :git => "https://github.com/maxkomarychev/react-native-ultimate-config.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,mm}"
  s.dependency "React-Core"

  if ENV['RCT_NEW_ARCH_ENABLED'] == '1'
    s.compiler_flags = folly_compiler_flags + " -DRCT_NEW_ARCH_ENABLED=1"
    s.pod_target_xcconfig = {
      "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/boost\" \
                                \"$(PODS_ROOT)/Headers/Public/React-Codegen\" \
                                \"$(PODS_ROOT)/React-Codegen\" \
                                \"$(PODS_ROOT)/ReactCommon\" \
                                \"$(PODS_TARGET_SRCROOT)/build/generated/ios\"",
      "OTHER_CPLUSPLUSFLAGS" => folly_compiler_flags,
      "CLANG_CXX_LANGUAGE_STANDARD" => "c++17"
    }

    s.dependency "React-Codegen"
    s.dependency "RCT-Folly"
    s.dependency "RCTRequired"
    s.dependency "RCTTypeSafety"
    s.dependency "ReactCommon/turbomodule/core"
  end
end
