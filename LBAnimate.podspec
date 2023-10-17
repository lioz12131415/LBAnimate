Pod::Spec.new do |s|
    s.name         = "LBAnimate"
    s.version      = "0.0.6"
    s.summary      = "LBAnimate: Lioz Balki Animate Framework"
    
    s.description  = <<-DESC
                   The Lioz Balki SDK for iOS Animate framework provides:
                   * UIVIEW Animations (Press, Firework, Breathe, Balloon)
                   DESC
    
    s.homepage  = "https://github.com/lioz12131415/LBAnimate.git"
    s.readme    = "https://raw.github.com/lioz12131415/LBAnimate/main/README.md"
    
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
