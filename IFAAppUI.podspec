Pod::Spec.new do |s|
    s.name              = 'IFAAppUI'
    s.version           = '2.0.1'
    s.summary           = 'A Cocoa Touch framework to help you develop high quality iOS apps faster.'
    s.homepage          = 'https://github.com/marcelo-schroeder/IFAAppUI'
    s.license           = 'Apache-2.0'
    s.author            = { 'Marcelo Schroeder' => 'marcelo.schroeder@infoaccent.com' }
    s.platform          = :ios, '10.0'
    s.requires_arc      = true
    s.source            = { :git => 'https://github.com/marcelo-schroeder/IFAAppUI.git', :tag => 'v' +  s.version.to_s }
    s.source_files      = 'IFAAppUI/IFAAppUI/classes/**/*.{h,m}'
    s.resource          = 'IFAAppUI/IFAAppUI/resources/**/*.*'
    s.dependency 'IFACoreUI', '~> 2.0'
end
