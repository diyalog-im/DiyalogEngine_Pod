#
#  Be sure to run `pod spec lint DiyalogEngine-iOS.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "DiyalogEngine-iOS"
  s.version      = "1.0.2"
  s.summary      = "DiyalogEngine-iOS SDK for intergration DiyalogEngine Messaging to your apps"

  s.homepage     = "http://diyalog.im/"
  s.license      = "MIT"
  s.author             = { "WiOS Gaurav H. Parmar" => "GauravHP@ProjectDemo.biz" }
  s.platform        = :ios, "8.0"
  s.requires_arc    = true
  s.source       = { :git => "https://github.com/diyalog-im/DiyalogEngine_Pod.git" }

   s.prepare_command = <<-CMD
      Scripts/download.sh
  CMD

  s.dependency 'J2ObjC-Framework'
#s.dependency 'MBProgressHUD'
#   s.dependency 'RSKImageCropper'
#   s.dependency 'SZTextView'
    s.dependency 'SocketRocket'
#   s.dependency 'AlamofireImage'
#   s.dependency 'Alamofire'
#   s.dependency 'CocoaAsyncSocket'


  s.preserve_paths = 'Frameworks'
  s.vendored_framework = 'Frameworks/DiyalogEngine.framework'

  s.xcconfig = { 
     "SWIFT_INCLUDE_PATHS" => "$(PROJECT_DIR)/DiyalogEngine-iOS/Frameworks/",
     "FRAMEWORK_SEARCH_PATHS" => "$(PROJECT_DIR)/DiyalogEngine-iOS/Frameworks/"
  }
end
