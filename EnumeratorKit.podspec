Pod::Spec.new do |s|
  s.name         = 'EnumeratorKit'
  s.version      = '0.1.2'

  s.summary      = 'Ruby-style enumeration in Objective-C.'
  s.description  = <<-EOS
    EnumeratorKit is a collection enumeration library modelled after
    Ruby's Enumerable module and Enumerator class.

    It allows you to work with collections of objects in a very
    compact, expressive way, and to chain enumerator operations together
    to form higher-level operations.

    EnumeratorKit extends the Foundation collection classes, and enables
    you to easily include the same functionality in your own custom
    collection classes.
  EOS

  s.ios.deployment_target = '5.1.1'
  s.requires_arc = true

  s.homepage     = 'https://github.com/sharplet/EnumeratorKit'
  s.license      = 'MIT'
  s.author       = { 'Adam Sharp' => 'adsharp@me.com' }
  s.source       = { :git => 'https://github.com/sharplet/EnumeratorKit.git', :tag => "#{s.version}" }

  s.source_files = 'EnumeratorKit/EnumeratorKit.h'

  s.default_subspec = 'Core'

  s.subspec 'Core' do |e|
    e.source_files = 'EnumeratorKit/Core', 'EnumeratorKit/EnumeratorKit.h'
    e.dependency 'EnumeratorKit/EKFiber'
  end

  s.subspec 'EKFiber' do |f|
    f.source_files = 'EnumeratorKit/EKFiber', 'EnumeratorKit/EnumeratorKit.h'
  end
end
