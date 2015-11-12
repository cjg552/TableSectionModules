#
# Be sure to run `pod lib lint TableSectionModules.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "TableSectionModules"
  s.version          = "0.1.0"
  s.summary          = "TableView Section Modules to reuse it in serveral places"

# This description is used to generate tags and improve search results.
#   * TableView Section Modules to reuse it in serveral places
#   * You can create modules unified and use it in several tableViews.
#   * Your ViewController is cleaner and you can divide UI in individual modules
  s.description      = "TableView Section Modules to reuse it in serveral places.
You can create modules unified and use it in several tableViews. Your ViewController is cleaner and you can divide UI in individual modules.
"

  s.homepage         = "https://github.com/cjg552/TableSectionModules"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Carlos Jimenez Galindo" => "iphonehipoglucido@gmail.com" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/TableSectionModules.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'TableSectionModules' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
