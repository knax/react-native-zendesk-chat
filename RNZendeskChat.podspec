require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'RNZendeskChat'
  s.version        = package['version']
  s.summary        = package['summary']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.source         = { :git => 'https://github.com/knax/react-native-zendesk-chat.git', :tag => s.version }


  s.social_media_url   = "https://github.com/knax/react-native-zendesk-chat"
  s.requires_arc   = true
  s.platform       = :ios, '9.0'
  s.preserve_paths = 'LICENSE', 'README.md', 'package.json', 'index.js'

  s.source_files  = "ios/*.{h,m}"
  s.dependency "React"
  s.dependency "ZDCChat"
end