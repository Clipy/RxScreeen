Pod::Spec.new do |s|
  s.name         = "RxScreeen"
  s.version      = "1.3.0"
  s.summary      = "RxScreeen is a RxSwift wrapper for Screeen."
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage     = "https://github.com/Clipy/RxScreeen"
  s.author       = { "Econa77" => "s.f.1992.ip@gmail.com" }
  s.source       = { :git => "https://github.com/Clipy/RxScreeen.git", :tag => "v#{s.version}" }
  s.platform     = :osx, '10.10'
  s.source_files = 'Lib/RxScreeen/*.swift'
  s.frameworks   = 'Cocoa'
  s.dependency 'Screeen', '~> 1.2'
  s.dependency 'RxSwift', '~> 4.0'
  s.dependency 'RxCocoa', '~> 4.0'
end
