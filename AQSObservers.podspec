Pod::Spec.new do |s|
  s.name         = "AQSObservers"
  s.version      = "0.1.1"
  s.summary      = "[iOS] A set of Notification Observers"
  s.homepage     = "https://github.com/AquaSupport/AQSObservers"
  s.license      = "MIT"
  s.author       = { "kaiinui" => "lied.der.optik@gmail.com" }
  s.source       = { :git => "https://github.com/AquaSupport/AQSObservers.git", :tag => "v0.1.1" }
  s.source_files  = "AQSObservers/Classes/**/*.{h,m}"
  s.requires_arc = true
  s.platform = "ios", '7.0'
end
