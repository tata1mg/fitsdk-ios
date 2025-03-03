Pod::Spec.new do |s|

  s.name                = "FitSDK"
  s.version             = "0.0.1"
  s.summary             = "1MG FitSDK iOS"
  s.description         = "FitSDK bridges wearables"
  s.homepage            = "https://www.1mg.com"
  s.license             = "1mg"
  s.author              = { "Manav" => "manav.prakash@1mg.com" }
  s.platform            = :ios, "13.0"
  s.source              = { :git => "https://manav1mg@bitbucket.org/tata1mg/fit_connect_ios.git", :tag => "0.0.1" }
  s.source_files        = "FitSDK/**/*.{h,m,swift}"
  s.swift_version       = "5"

 # Add the dependency
  s.dependency "TerraiOS"
end
