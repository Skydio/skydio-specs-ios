Pod::Spec.new do |s|
    s.name              = 'SkydioSDK'
    s.version           = '24.1.0'
    s.summary           = 'BETA version of the SkydioSDK'
    s.homepage          = 'https://console.skydio.com/'

    s.author            = { 'Skydio' => 'sdk@skydio.com' }
    s.license           = { :type => 'Proprietary' }

    s.platform          = :ios
    s.source            = {
        :git => 'git@github.com:Skydio/skydio-sdk-ios.git', :tag => "#{s.version}"
    }

    s.ios.deployment_target = '14.0'
    s.ios.vendored_frameworks = 'SkydioSDK.xcframework', 'SwiftProtobuf.xcframework'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }

end
