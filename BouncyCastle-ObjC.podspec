Pod::Spec.new do |s|
  s.name             = 'BouncyCastle-ObjC'
  s.version          = '0.2.0'
  s.summary          = 'Bouncy Castle for Objective-C'
  s.description      = 'Bouncy Castle for Objective-C converted from Java implementation using J2ObjC.'
  s.homepage         = 'https://github.com/saschpe/BouncyCastle-ObjC'
  s.license          = { :type => 'AGPL', :file => 'LICENSE' }
  s.author           = { 'CMK' => 'cirno.mainasuk@gmail.com', 'saschpe' => 'sascha@peilicke.de' }
  s.source           = { :git => 'https://github.com/saschpe/BouncyCastle-ObjC.git', :tag => s.version.to_s }
  s.prepare_command = <<-CMD
    scripts/prepare
  CMD

  s.ios.deployment_target = '12.0'

  #s.preserve_paths = 'j2objc-2.8/**/*', 'BouncyCastle-ObjC/**/*'
  s.header_mappings_dir = 'Headers'
  #s.header_dir = 'Headers'
  #s.public_header_files = [
  #  'Headers/**/*.h',
  #  'Sources/**/*.h'
  #]
  #  'j2objc-2.8/frameworks/JRE.xcframework/Headers"',

  #s.private_header_files = 'BouncyCastle-ObjC/Headers/**/*.h'
  s.source_files = [
    'Headers/**/*',
    'Sources/**/*',
  ]
    #'j2objc-2.8/frameworks/JRE.xcframework/Headers"',
  s.vendored_frameworks = [
    #'j2objc-2.8/frameworks/JRE.xcframework'
  ]

  s.xcconfig = { 
    #'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}/../../../j2objc-2.8/frameworks/"',
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/../../../Sources" "${PODS_ROOT}/../../../j2objc-2.8/include"',
    'LIBRARY_SEARCH_PATHS' => '"${PODS_ROOT}/../../../j2objc-2.8/lib"',
  }
  s.pod_target_xcconfig = {
    #'FRAMEWORK_SEARCH_PATHS' => '$(inherited) Frameworks',
    #'HEADER_SEARCH_PATHS' => '$(inherited) Headers',
  }
  #s.libraries = 'jre_emul', 'z', 'iconv'
  #s.static_framework = true
end
