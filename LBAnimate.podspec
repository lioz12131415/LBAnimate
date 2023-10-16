Pod::Spec.new do |s|
    s.name         = "LBAnimate"
    s.version      = "0.0.1"
    s.summary      = "LBAnimate: Lioz Balki Animate Framework"
    s.description  = "LBAnimate: Lioz Balki Animate Framework First Description"
    s.homepage     = "https://github.com/lioz12131415/LBAnimate.git"
    
    s.license = {
        :type => "MIT", :file => "LICENSE"
    }
    s.author = {
        "Lioz Balki" => "lioz12131415@gmail.com"
    }
    s.source = {
        :git => "https://github.com/lioz12131415/LBAnimate.git", :tag => "#{s.version}"
    }
    
    s.platform               = :ios
    s.requires_arc           = true
    s.swift_version          = "5.0"
    s.vendored_frameworks    = "LBAnimate.xcframework"
    s.ios.deployment_target  = '14.0'

end
