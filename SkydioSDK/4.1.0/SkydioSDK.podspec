Pod::Spec.new do |s|
    s.name              = 'SkydioSDK'
    s.version           = '4.1.0'
    s.summary           = 'BETA version of the SkydioSDK'
    s.homepage          = 'https://console.skydio.com/'

    s.author            = { 'Skydio' => 'sdk@skydio.com' }
    s.license           = { :type => 'Proprietary' }

    s.platform          = :ios
    s.source            = {
#        :http => "https://jdecew@github.com/Skydio/skydio-sdk-ios/raw/#{s.version}/#{s.version}/SkydioSDK.zip"
        :git => 'git@github.com:Skydio/skydio-sdk-ios.git', :tag => "x#{s.version}"
    }

    s.ios.deployment_target = '11.0'
    s.ios.vendored_frameworks = 'SkydioSDK.framework'
end
