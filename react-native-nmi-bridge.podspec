require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'react-native-nmi-bridge'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.source         = { :git => 'https://github.com/strues/react-native-nmi-bridge', :tag => "v#{s.version}" }

  s.requires_arc   = true
  s.platform       = :ios, '9.0'
  s.source_files  = "ios/*.{h,m,a}"
  s.preserve_paths =  'README.md', 'package.json', 'index.js'

  s.dependency 'React-Core'
end
