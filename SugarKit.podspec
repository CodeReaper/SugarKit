Pod::Spec.new do |s|

  s.name         = "SugarKit"
  s.version      = "0.0.1"
  s.summary      = "Extending swift to add the method APIs you always wanted."

  s.description  = <<-DESC
  The mapped methods from ObjC can be clumsy to work with in swift. SugarKit extends existing classes to provide
  an easier to use API.
                   DESC

  s.homepage     = "https://github.com/CodeReaper/SugarKit"

  s.license      = { :type => "BSD", :file => "LICENSE" }
  s.author             = { "Jakob Jensen" => "jje@trifork.com" }

  s.ios.deployment_target = "8.0"

  s.source       = { :git => "https://github.com/CodeReaper/SugarKit.git", :tag => "#{s.version}" }

  s.default_subspecs = 'UIKit'

  s.subspec 'UIKit' do |ss|
    ss.source_files = 'Classes/UIKit/*.swift'
  end

  s.requires_arc = true

  s.xcconfig = { 'SWIFT_VERSION' => '3.0' }

end
