Pod::Spec.new do |s|
  s.name             = 'ComScore'
  s.version          = '5.6.1b'
  s.summary          = 'Official analytics library for iOS, watchOS and tvOS from comScore'
  s.description      = <<-DESC
  This library is used to collect analytics from iOS, watchOS and tvOS applications. The library supports apps developed in native Objective C or Swift with Apple Xcode or in other languages/tools which can include and use native Objective C libraries.
                       DESC
  s.homepage         = 'https://github.com/comscore/ComScore-iOS-watchOS-tvOS'
  s.license          = 'Custom'
  s.author           = { "comScore" => "www.comscore.com" }
  s.source           = { :git => "https://github.com/comscore/ComScore-iOS-watchOS-tvOS.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/comScore'

  s.libraries = 'c++'
  s.frameworks = 'Security'
  s.prepare_command = <<-CMD
                         touch .pod
                         rm -rf ComScore/iOS/ComScore.framework/strip-framework.sh
                         rm -rf ComScore/tvOS/ComScore.framework/strip-framework.sh
                         rm -rf ComScore/watchOS/ComScore.framework/strip-framework.sh
                      CMD

  s.ios.deployment_target = '8.0'
  s.ios.vendored_frameworks = 'ComScore/iOS/ComScore.framework'
  s.ios.preserve_paths = 'ComScore/iOS/ComScore.framework'
  s.ios.public_header_files = 'ComScore/iOS/ComScore.framework/Headers/*.h'
  s.ios.source_files = 'ComScore/iOS/ComScore.framework/Headers/*.h'
  s.ios.frameworks = 'SystemConfiguration'
  s.ios.resource_bundle = { 'SCORBundle' => '.pod' }

  s.tvos.deployment_target = '9.0'
  s.tvos.vendored_frameworks = 'ComScore/tvOS/ComScore.framework'
  s.tvos.preserve_paths = 'ComScore/tvOS/ComScore.framework'
  s.tvos.public_header_files = 'ComScore/tvOS/ComScore.framework/Headers/*.h'
  s.tvos.source_files = 'ComScore/tvOS/ComScore.framework/Headers/*.h'
  s.tvos.frameworks = 'SystemConfiguration'
  s.tvos.resource_bundle = { 'SCORBundle' => '.pod' }

  s.watchos.deployment_target = '2.0'
  s.watchos.vendored_frameworks = 'ComScore/watchOS/ComScore.framework'
  s.watchos.preserve_paths = 'ComScore/watchOS/ComScore.framework'
  s.watchos.public_header_files = 'ComScore/watchOS/ComScore.framework/Headers/*.h'
  s.watchos.source_files = 'ComScore/watchOS/ComScore.framework/Headers/*.h'
  s.watchos.resource_bundle = { 'SCORBundle' => '.pod' }


  s.header_dir = 'ComScore'
  s.module_name = 'ComScore'
end
