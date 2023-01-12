Pod::Spec.new do |s|
    s.name              = 'SkydioUISDK'
    s.version           = '21.1.3'
    s.summary           = 'BETA version of the SkydioUISDK'
    s.homepage          = 'https://console.skydio.com/'

    s.author            = { 'Skydio' => 'sdk@skydio.com' }
    s.license           = { :type => 'Proprietary' }

    s.platform          = :ios
    s.source            = {
        :git => 'git@github.com:Skydio/skydio-ui-sdk-ios.git', :tag => "#{s.version}"
    }

    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }

    s.ios.deployment_target = '11.0'
    s.ios.vendored_frameworks = 'SkydioUISDK.xcframework', 'SwiftProtobuf.xcframework'

    s.dependency 'lottie-ios', '3.3.0'
    s.dependency 'MarqueeLabel', '4.0.2'
end
