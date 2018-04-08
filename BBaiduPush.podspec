Pod::Spec.new do |s|
  s.name         = 'BBaiduPush'
  s.version      = '1.5.4'
  s.summary      = 'Baidu Push SDK for iOS.'
  s.homepage     = 'https://github.com/BenBeng/BaiduPush-iOS-SDK'
  s.license      = { :type => 'Copyright', :text => 'LICENSE ©2015-2017 Baidu, Inc. All rights reserved' }
  s.author       = { 'BenBeng' => 'https://github.com/BenBeng' }
  s.source       = { :http => 'http://boscdn.bpc.baidu.com/channelpush/sdk/BPush-SDK-iOS-1.5.4.zip', :sha1 => 'cf9cd7f60c4acb9629998501ce73861b29c0fb1c' }
  
  s.ios.deployment_target = '5.1'
  s.frameworks = 'Foundation','CoreTelephony','SystemConfiguration'
  s.libraries = 'z'
  s.requires_arc = false
  s.default_subspecs = 'normal'
  
  s.subspec 'normal' do |sp|
    sp.source_files = 'BPush-SDK-iOS-1.5.4/normalversion/*.h'
    sp.public_header_files = 'BPush-SDK-iOS-1.5.4/normalversion/*.h'
    sp.vendored_libraries = 'BPush-SDK-iOS-1.5.4/normalversion/*.a'
    sp.frameworks = 'Foundation','CoreTelephony','SystemConfiguration'
    sp.libraries = 'z'
  end
  
  s.subspec 'idfa' do |sp|
    sp.source_files = 'BPush-SDK-iOS-1.5.4/idfaversion/*.h'
    sp.public_header_files = 'BPush-SDK-iOS-1.5.4/idfaversion/*.h'
    sp.vendored_libraries = 'BPush-SDK-iOS-1.5.4/idfaversion/*.a'
    sp.frameworks = 'Foundation','CoreTelephony','SystemConfiguration'
    sp.libraries = 'z'
  end
end
