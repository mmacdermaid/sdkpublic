#
# Be sure to run `pod lib lint MediaMathSDK.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MediaMathSDK"
  s.version          = "0.1.0"
  s.summary          = "I'm testing the sdk deploy"
  s.description      = <<-DESC
                        You said it was optional

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/mmacdermaid/sdkpublic"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "mmacdermaid" => "mmacdermaid@mediamath.com" }
  s.source           = { :git => "https://github.com/mmacdermaid/sdkpublic.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

s.source_files = 'Pod/Classes/*.mm', 'Pod/Classes/*.h'
#s.public_header_files = 'Pod/Classes/*.h'
  s.resource_bundles = {
    'MediaMathSDK' => ['Pod/Assets/*.a']
  }

s.ios.vendored_library = 'libMediamathSDK.a'

s.libraries = 'MediaMathSDK', 'stdc++', 'lObjC'

#s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(SRCROOT)/Pod/Assets/**' }
#s.xcconfig = { 'OTHER_LDFLAGS' => '-lstdc++' }
#s.xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

s.frameworks = 'SystemConfiguration', 'MobileCoreServices', 'AdSupport', 'Foundation'

#s.public_header_files = 'Pod/Classes/MediaMathSDK.h'

  # s.dependency 'AFNetworking', '~> 2.3'




end



