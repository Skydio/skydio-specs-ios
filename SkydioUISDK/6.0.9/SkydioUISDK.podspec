Pod::Spec.new do |s|
    s.name              = 'SkydioUISDK'
    s.version           = '6.0.9'
    s.summary           = 'BETA version of the SkydioUISDK'
    s.homepage          = 'https://console.skydio.com/'

    s.author            = { 'Skydio' => 'sdk@skydio.com' }
    s.license           = { :type => 'Proprietary' }

    s.platform          = :ios
    s.source            = {
        :git => 'git@github.com:Skydio/skydio-ui-sdk-ios.git', :tag => "#{s.version}"
    }

    s.ios.deployment_target = '12.0'
    s.ios.vendored_frameworks = 'SkydioUISDK.framework', 'SwiftProtobuf.framework'

    s.dependency 'lottie-ios', '3.0.4'
    s.dependency 'MarqueeLabel', '4.0.0'
end
