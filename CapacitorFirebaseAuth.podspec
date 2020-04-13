
Pod::Spec.new do |s|
  s.name = 'CapacitorFirebaseAuth'
  s.version = '0.3.0'
  s.summary = 'Capacitor plugin for Firebase Authentication'
  s.license = 'MIT'
  s.homepage = 'https://github.com/baumblatt/capacitor-firebase-auth.git'
  s.author = 'Bernardo Baumblatt'
  s.source = { :git => 'https://github.com/baumblatt/capacitor-firebase-auth.git', :tag => s.version.to_s }
  s.ios.deployment_target  = '11.0'
  s.dependency 'Capacitor'
  s.dependency 'Firebase/Auth'
  s.static_framework = true
  s.default_subspecs = :Social

  s.subspec 'OnlyPhone' do |sp|
    sp.source_files = 'ios/Plugin/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    sp.exclude_files = 'ios/Plugin/Plugin/**/{Facebook,Google,Twitter}ProviderHandler.swift'  
  end

  s.subspec 'Social' do |sp|
    sp.dependency 'GoogleSignIn'
    sp.dependency 'TwitterKit'
    sp.dependency 'FBSDKCoreKit'
    sp.dependency 'FBSDKLoginKit'
    sp.dependency 'Firebase/Core'  
    sp.source_files = 'ios/Plugin/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
  end
end