Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "TableSectionModules"
s.summary = "TableSectionModules lets you to reuse table section modules in different tablevies"
s.requires_arc = true

# 2
s.version = "1.0.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Carlos Jimenez Galindo" => "jimenezgalindocarlos@gmail.com" }

# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/cjg552/TableSectionModules"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/cjg552/TableSectionModules.git", :tag => "#{s.version}"}

# 7
s.framework = "UIKit"
s.framework = "Foundation"

# 8
s.source_files = "TableSectionModules/**/*.{swift}"

# 9
# s.resources = "TableSectionModules/**/*.{png,jpeg,jpg,storyboard,xib}"
end