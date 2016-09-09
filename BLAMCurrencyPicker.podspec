#
# Be sure to run `pod lib lint BLAMCurrencyPicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BLAMCurrencyPicker'
  s.version          = '0.0.3'
  s.summary          = 'A Collection View based interface for selecting currency symbol.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A Collection View based interface for selecting currency symbol and ISO code.  Designed to be presented as a popover when, for example, user has to select a currency for an invoice.
                       DESC

  s.homepage         = 'https://github.com/petetodd/BLAMCurrencyPicker'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Peter Todd' => 'peter@petertodd.com' }
  s.source           = { :git => 'https://github.com/petetodd/BLAMCurrencyPicker.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.3'

  s.source_files = 'BLAMCurrencyPicker/Classes/**/*'
  
  s.resource_bundles = {
     'BLAMCurrencyPicker' => ['BLAMCurrencyPicker/Classes/**/*.{storyboard,xib,xcdatamodeld}']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
