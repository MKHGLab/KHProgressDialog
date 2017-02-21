#
# Be sure to run `pod lib lint KHProgressDialog.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KHProgressDialog'
  s.version          = '0.1.0'
  s.summary          = 'initial version.'

  s.description      = <<-DESC
TODO: The awesome progress dialog that makes your task easier.
                       DESC

  s.homepage         = 'https://github.com/MKHGLab/KHProgressDialog'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MKHGLab' => 'mkhglab@gmail.com' }
  s.source           = { :git => 'https://github.com/MKHGLab/KHProgressDialog.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'KHProgressDialog/Classes/**/*'
  
  s.resource_bundles = {
     'KHProgressDialog' => ['KHProgressDialog/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
