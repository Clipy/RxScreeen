Pod::Spec.new do |s|
  s.name         = "RxScreeen"
  s.version      = "2.0.0"
  s.summary      = "RxScreeen is a RxSwift wrapper for Screeen."
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage     = "https://github.com/Clipy/RxScreeen"
  s.author       = { "Econa77" => "s.f.1992.ip@gmail.com" }
  s.source       = { :git => "https://github.com/Clipy/RxScreeen.git", :tag => "v#{s.version}" }
  s.platform     = :osx, '10.10'
  s.source_files = 'Lib/RxScreeen/*.swift'
  s.swift_version = '5.0'
  s.frameworks   = 'Cocoa'
  s.dependency 'Screeen', '~> 2.0.1'
  s.dependency 'RxSwift', '~> 6.0'
  s.dependency 'RxCocoa', '~> 6.0'
end
