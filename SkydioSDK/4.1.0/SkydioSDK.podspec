Pod::Spec.new do |s|
    s.name              = 'SkydioSDK'
    s.version           = '4.1.0'
    s.summary           = 'BETA version of the SkydioSDK'
    s.homepage          = 'https://console.skydio.com/'

    s.author            = { 'Skydio' => 'sdk@skydio.com' }
    s.license           = { :type => 'Proprietary' }

    s.platform          = :ios
    s.source            = {
        # TODO: support https once we go public.  Unfotunately, this doesn't play nice with 2-factor github auth
        # NOTE: We'll have to change the vendored_frameworks to "skydio-sdk-ios-#{s.version}/SkydioSDK.framework"
        #:http => "https://github.com/Skydio/skydio-sdk-ios/archive/#{s.version}.zip"
        :git => 'git@github.com:Skydio/skydio-sdk-ios.git', :tag => "#{s.version}"
    }

    s.ios.deployment_target = '11.0'
    s.ios.vendored_frameworks = 'SkydioSDK.framework'
end
