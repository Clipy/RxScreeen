Pod::Spec.new do |s|
  s.name         = "RxScreeen"
  s.version      = "0.0.2"
  s.summary      = "RxScreeen is a RxSwift wrapper for Screeen."
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage     = "https://github.com/Clipy/RxScreeen"
  s.author       = { "Econa77" => "f.s.1992.ip@gmail.com" }
  s.source       = { :git => "https://github.com/Clipy/RxScreeen.git", :tag => "v#{s.version}" }
  s.platform     = :osx, '10.9'
  s.source_files = 'Lib/RxScreeen/*.swift'
  s.frameworks   = 'Cocoa'
  s.dependency 'Screeen', '0.0.3'
end
