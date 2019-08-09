#
# Be sure to run `pod lib lint Animal2.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'chenzbPodTest'
  s.version          = '1.5.0'
  s.summary          = 'Animal summmmmm.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Animal description s.
                       DESC

  s.homepage         = 'https://www.baidu.com/'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yueshuya' => 'bao.yu1990@163.com' }
  s.source           = { :git => 'https://github.com/yueshuya/czbPodTest.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'Animal/**/*.{h,m,mm}'

  s.preserve_path = 'cat.sh'

  # s.script_phase = { 
  #                    :name => 'Hello World',
  #                    :script => 'echo "====="; sleep 20', 
  #                    :execution_position=>:before_compile
  #                  }


  s.script_phase = { 
                     :name => 'Hello World', 
                     :script => 'echo "=========="; echo $PODS_TARGET_SRCROOT; chmod +x $PODS_TARGET_SRCROOT/cat.sh; $PODS_TARGET_SRCROOT/cat.sh', 
                     :execution_position=>:after_compile 
                   }
  
  # s.resource_bundles = {
  #   'Animal2' => ['Animal2/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
