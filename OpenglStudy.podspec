Pod::Spec.new do |s|
s.name             = "OpenglStudy"
s.version          = “1.0.0"
s.summary          = "opengl study example"
s.homepage         = "https://github.com/MakeZL/ZLPhotoLib"
s.license          = 'MIT'
s.author           = { “akings” => “liuqimother@163.com" }
s.source           = { :git => "https://github.com/MakeZL/ZLPhotoLib.git", :tag => s.version.to_s }

s.platform         = :ios, '6.0'
s.requires_arc     = true
s.frameworks       = 'AssetsLibrary' , 'AVFoundation', 'MediaPlayer'
s.source_files     = 'OpenglStudy/*'
s.resource         = "OpenglStudy/Assets.xcassets"

end