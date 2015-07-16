#
# Be sure to run `pod lib lint NJHDelegateSplitter.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "NJHDelegateSplitter"
  s.version          = "0.1.0"
  s.summary          = "The NJHDelegateSplitter class is created to allow you to have two delegates."
  s.description      = "The NJHDelegateSplitter class is created to allow you to have two delegates. For example, if you want to have one UITableViewDelegate delegate and a separate UIScrollViewDelegate for the same UITableView."
  s.homepage         = "https://github.com/heumn/NJHDelegateSplitter"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Nikolai Johan Heum" => "nikolaiheum@gmail.com" }
  s.source           = { :git => "https://github.com/heumn/NJHDelegateSplitter.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/nikolaiheum'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = '*.{h,m}'
  s.resource_bundles = {
    'NJHDelegateSplitter' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Library/src/**/*.{h}'
  # s.frameworks = 'Foundation', ‘UIKit’
end
