platform :ios, '8.0'
workspace 'IFAAppUI'
project 'IFAAppUI/IFAAppUI.xcodeproj'
use_frameworks!

target :IFAAppUI do

  pod 'IFAFoundation', :git => 'https://github.com/marcelo-schroeder/IFAFoundation.git', :branch => 'dev_iOS10_Cocoapods1'
  # pod 'IFAFoundation', :git => 'https://github.com/marcelo-schroeder/IFAFoundation.git', :branch => 'development'
  # pod 'IFAFoundation', :path => '/Users/mschroeder/myfiles/projects/Xcode/IFAFoundation/IFAFoundation_development'

  pod 'IFACoreUI', :git => 'https://github.com/marcelo-schroeder/IFACoreUI.git', :branch => 'dev_iOS10_Cocoapods1'
  # pod 'IFACoreUI', :git => 'https://github.com/marcelo-schroeder/IFACoreUI.git', :branch => 'development'
  # pod 'IFACoreUI', :path => '/Users/mschroeder/myfiles/projects/Xcode/IFACoreUI/IFACoreUI_development'

  target :IFAAppUITests do
    pod 'IFATestingSupport'
#pod 'IFATestingSupport', :git => 'https://github.com/marcelo-schroeder/IFATestingSupport.git', :tag => 'v0.1.1'
# pod 'IFATestingSupport', :git => 'https://github.com/marcelo-schroeder/IFATestingSupport.git', :branch => 'development'
# pod 'IFATestingSupport', :path => '/Users/mschroeder/myfiles/projects/Xcode6/IFATestingSupport/IFATestingSupport_development'
    pod 'OCHamcrest', :inhibit_warnings => true
    pod 'OCMock'
  end

end
