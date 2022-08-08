#
#  Be sure to run `pod spec lint PodLogin.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


# 1
s.platform = :ios
s.ios.deployment_target = '9.0'
s.name         = "PodUPComponents"
s.summary      = "A short description of PodUPComponents."
s.requires_arc = true

# 2
s.version      = "1.2.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author             = { "Chris Ferdian" => "chris.ferdian@aia.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "http://gitlab.digital.id.aia.biz/icare/podupcomponents"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "http://gitlab.digital.id.aia.biz/icare/podupcomponents.git",
:tag => "#{s.version}" }

# 7
s.framework = "UIKit"
s.dependency 'MaterialComponents/TextFields'
s.dependency 'MBProgressHUD'
s.dependency 'Alamofire'
s.dependency 'AppCenter'
s.dependency 'Appsee'
s.dependency 'KeychainSwift'
s.dependency 'SwiftHash'

# 8
s.source_files = "PodUPComponents/**/*.{swift}", "PodUPComponents/**/*.{h,m}"

# 9
s.resources = ["PodUPComponents/*.{png,otf,jpeg,jpg,storyboard,xib,xcassets}", "PodUPComponents/**/*.{png,jpeg,otf,jpg,storyboard,xib,xcassets}"]

# 10
s.swift_version = "4.2"

# 11
#s.ios.vendored_frameworks = 'PodUPComponents/AppCenter.framework', 'PodUPComponents/AppCenterAnalytics.framework', 'PodUPComponents/AppCenterCrashes.framework', 'PodUPComponents/Alamofire.framework', 'PodUPComponents/MBProgressHUD.framework'
#s.static_framework = true
s.pod_target_xcconfig = {
        'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/AppCenter',
        'OTHER_LDFLAGS'          => '$(inherited) -undefined dynamic_lookup'
}
end
