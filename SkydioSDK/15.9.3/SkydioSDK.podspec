Pod::Spec.new do |s|
    s.name              = 'SkydioSDK'
    s.version           = '15.9.3'
    s.summary           = 'BETA version of the SkydioSDK'
    s.homepage          = 'https://console.skydio.com/'

    s.author            = { 'Skydio' => 'sdk@skydio.com' }
    s.license           = { :type => 'Proprietary' }

    s.platform          = :ios
    s.source            = {
        :git => 'git@github.com:Skydio/skydio-sdk-ios.git', :tag => "#{s.version}"
    }

    s.ios.deployment_target = '11.0'
    s.ios.vendored_frameworks = 'SkydioSDK.framework', 'SwiftProtobuf.framework'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
