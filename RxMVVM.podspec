#
# Be sure to run `pod lib lint RxMVVM.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RxMVVM'
  s.version          = '1.0.0'
  s.summary          = 'A short description of RxMVVM.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/syquandev/RxMVVM'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'syquandev' => 'syquandev@gmail.com' }
  s.source           = { :git => 'https://github.com/syquandev/RxMVVM.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'RxMVVM/Classes/**/*'
  
  s.resource_bundles = {
      'Core' => [
      'Core/Assets/Storyboards/**/*.storyboard',
      'Core/Assets/Xibs/**/*.xib',
      'Core/Assets/Resources/**/*.xcassets',
      'Core/Classes/**/*.xib',
      'Core/Classes/**/*.storyboard']
    }
    
    s.static_framework = true
    
    s.dependency 'ESPullToRefresh', '~> 2.9'
    s.dependency 'Core'
    s.dependency 'API'
    s.dependency 'RxViewController'
    s.dependency 'RxCocoa', '5.1'
    s.dependency 'NSObject+Rx', '5.0'
    s.dependency 'Reusable', '~> 4.1'
    s.dependency 'Then', '~> 2.7'
    s.dependency 'MagicalRecord', '2.3.0'
    s.dependency 'MBProgressHUD', '~> 1.2'
    s.dependency 'SDWebImage', '~> 5.8.3'
    s.dependency 'ValidatedPropertyKit'
    
end
