Pod::Spec.new do |s|
  s.name         = "GCBounceButton"
  s.version      = "0.0.1"
  s.summary      = "A simple UIButton subclass with a bounce animation using KVO."

  s.homepage     = "https://github.com/aout/GCBounceButton"

  s.license      = "MIT"

  s.author             = { "Guillaume CASTELLANA" => "guillaume.castellana@gmail.com" }
  s.social_media_url   = "http://twitter.com/aooout"

  s.platform     = :ios, '5.0'

  s.source       = { :git => "https://github.com/aout/GCBounceButton.git", :tag => "0.2" }

  s.source_files  = "Classes"
  s.public_header_files = "Classes/*.h"

  s.requires_arc = true
end
