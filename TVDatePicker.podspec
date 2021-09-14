#
# Be sure to run `pod lib lint TVDatePicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TVDatePicker'
  s.version          = '1.1.0'
  s.summary          = 'The missing fully featured UIDatePicker for tvOS.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Create a date picker in all of the same available styles in its iOS counterpart, Date, Time, Date & Time and countdown timer are all available.
                       DESC
  s.homepage         = 'https://github.com/lechium/TVDatePicker'
   s.screenshots     = 'https://raw.githubusercontent.com/lechium/KBDatePicker/master/Examples/KBDatePickerModeCountDownTimer.png', 'https://raw.githubusercontent.com/lechium/KBDatePicker/master/Examples/KBDatePickerModeDate.png', 'https://raw.githubusercontent.com/lechium/KBDatePicker/master/Examples/KBDatePickerModeDateAndTime.png', 'https://raw.githubusercontent.com/lechium/KBDatePicker/master/Examples/KBDatePickerModeTime.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Kevin Bradley' => 'kevin.w.bradley@me.com' }
  s.source           = { :git => 'https://github.com/lechium/TVDatePicker.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.tvos.deployment_target = '9.0'

  s.source_files = 'TVDatePicker/Classes/**/*'
  s.swift_version = '5.0'
  # s.resource_bundles = {
  #   'TVDatePicker' => ['TVDatePicker/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
