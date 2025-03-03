Pod::Spec.new do |spec|

  spec.name                = "FitSDK"
  spec.version             = "0.0.3"
  spec.summary             = "1MG FitSDK iOS"
  spec.description         = "FitSDK bridges wearables"
  spec.homepage            = "https://www.1mg.com"
  spec.author              = { "Manav" => "manav.prakash@1mg.com" }
  spec.source        = { :git => 'https://github.com/tata1mg/fitsdk-ios.git', :tag => spec.version.to_s }
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.swift_version = '5.0'
  spec.ios.deployment_target = '13.0'
  spec.platform      = :ios, "13.0"
  spec.ios.vendored_frameworks = [
    "Frameworks/FitSDK.xcframework"
  ]

 # Add the dependency
  spec.dependency "TerraiOS"
end
