Pod::Spec.new do |s|
  s.name             = 'QuickGWT'
  s.version          = '1.0.0'
  s.summary          = 'Simply adds Given When and Then to Quick.'
  s.description      = <<-DESC
Simply adds Given When and Then to Quick. And makes sure the test outputs are looking pretty.
                       DESC

  s.homepage         = 'https://github.com/mennolovink/QuickGWT'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mennolovink' => 'mclovink@me.com' }
  s.source           = { :git => 'https://github.com/mennolovink/QuickGWT.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'

  s.source_files = 'QuickGWT/Classes/**/*'
  
  s.dependency 'Quick', '~> 1.2'
end
