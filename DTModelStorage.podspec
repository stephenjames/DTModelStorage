Pod::Spec.new do |s|
  s.name     = 'DTModelStorage'
  s.version      = "7.0.0"
  s.license  = 'MIT'
  s.summary  = 'Storage classes for datasource based controls.'
  s.homepage = 'https://github.com/DenHeadless/DTModelStorage'
  s.social_media_url = 'https://twitter.com/DTCoder'
  s.authors  = { 'Denys Telezhkin' => 'denys.telezhkin@yandex.ru' }
  s.source   = { :git => 'https://github.com/DenHeadless/DTModelStorage.git', :tag => s.version.to_s }
  s.requires_arc = true
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.frameworks = 'UIKit', 'Foundation', 'CoreData'
  s.swift_version = '4.0'
  
  s.subspec 'Core' do |core|
      core.source_files = 'Source/Core/*.swift'
  end

  s.subspec 'Realm' do |realm|
      realm.dependency 'DTModelStorage/Core'
      realm.dependency 'RealmSwift', '~> 3.0'
      realm.source_files = 'Source/Realm/*.swift'
  end

  s.default_subspec = 'Core'
end
