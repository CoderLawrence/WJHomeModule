#
# Be sure to run `pod lib lint WJHomeModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WJHomeModule'
  s.version          = '0.1.0'
  s.summary          = '私有组件化工程的首页组件模块'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/CoderLawrence/WJHomeModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CoderLawrence' => '791785648@qq.com' }
  s.source           = { :git => 'https://github.com/CoderLawrence/WJHomeModule.git', :tag => s.version.to_s }
  s.requires_arc     = true
  s.ios.deployment_target = '8.0'

  s.subspec 'Business' do |business|
    business.source_files = 'WJHomeModule/Classes/Business/*.{h,m}'
    business.public_header_files = 'WJHomeModule/Classes/Business/*.h'
    business.dependency 'WJBaseComponent'
    business.frameworks = 'UIKit'
  end

  s.subspec 'Target' do |target|
    target.source_files = 'WJHomeModule/Classes/Target/*.{h,m}'
    target.public_header_files = 'WJHomeModule/Classes/Target/*.h'
    target.dependency 'CTMediator'
    target.dependency 'WJHomeModule/Business'
  end

  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  #s.source_files = 'WJHomeModule/Classes/**/*'
  
  # s.resource_bundles = {
  #   'WJHomeModule' => ['WJHomeModule/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
