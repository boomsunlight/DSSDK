#
# Be sure to run `pod lib lint DSSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DSSDK'
  s.version          = '0.0.5'
  s.summary          = 'DSSDK'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/boomsunlight/DSSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'boomsunlight' => 'sunlightboom@163.com' }
  s.source           = { :git => 'https://github.com/boomsunlight/DSSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DSSDK/Classes/**/*'
  
  # s.resource_bundles = {
  #   'DSSDK' => ['DSSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AFNetworking'
  s.dependency 'YYWebImage'
  s.dependency 'YYCache'
  s.dependency 'PPNetworkHelper'
  s.dependency 'MJExtension'


end
