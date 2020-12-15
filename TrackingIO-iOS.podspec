
Pod::Spec.new do |spec|

  spec.name         = "TrackingIO-iOS"
  spec.version      = "1.7.8"
  spec.summary      = "ReYun TrackingIO SDK"

  spec.description  = <<-DESC
                        ReYun TrackingIO SDK
                   DESC

  spec.homepage     = "https://www.reyun.com"

  spec.license      = { :type => "MIT", :file => "LICENSE" }


  spec.author             = { "Eddy Wong" => "784550567@qq.com" }

  spec.platform     = :ios
  spec.platform     = :ios, "9.0"
   
  spec.source       = { :git => "https://github.com/hohua88/TrackingIO-iOS.git", :tag => "#{spec.version}" }

  spec.source_files  = "TrackingIO/*.{h,a}"

  spec.ios.vendored_library = "TrackingIO/*.a"

  spec.static_framework = true
  spec.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/TrackingIO-iOS/TrackingIO/**"' }
  
  spec.frameworks = 'SystemConfiguration','AdSupport','CoreTelephony','Security','CoreMotion',"iAd",'AVFoundation',"WebKit","CFNetwork"

  spec.libraries  = 'sqlite3','ReYunTracking',"z","resolv"

end
