Pod::Spec.new do |s|
    s.name              = 'SkydioUISDK'
    s.version           = '19.0.2'
    s.summary           = 'BETA version of the SkydioUISDK'
    s.homepage          = 'https://console.skydio.com/'

    s.author            = { 'Skydio' => 'sdk@skydio.com' }
    s.license           = { :type => 'Proprietary' }

    s.platform          = :ios
    s.source            = {
        :git => 'git@github.com:Skydio/skydio-ui-sdk-ios.git', :tag => "#{s.version}"
    }

    s.ios.deployment_target = '11.0'
    s.ios.vendored_frameworks = 'SkydioUISDK.framework', 'SwiftProtobuf.framework'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

    s.dependency 'lottie-ios', '3.1.8'
    s.dependency 'MarqueeLabel', '4.0.2'
end
