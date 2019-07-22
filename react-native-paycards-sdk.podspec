require 'json'

package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name           = 'react-native-paycards-sdk'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.source         = { git: 'https://github.com/IordacheClaudiu/react-native-paycards-sdk' }

  s.requires_arc   = true
  s.platform       = :ios, '11.0'

  s.preserve_paths = 'LICENSE', 'README.md', 'package.json', 'index.js'
  s.source_files   = 'ios/*.{h,m}'

  s.dependency 'React'
  s.dependency 'PayCardsRecognizer'
  s.dependency 'Hex'
end
