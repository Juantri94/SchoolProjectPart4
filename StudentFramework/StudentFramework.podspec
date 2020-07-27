
Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.name         = "StudentFramework"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of StudentFramework."
  spec.description  = "DESC"
  spec.homepage     = "http://EXAMPLE/StudentFramework"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.license      = "MIT"

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.author             = { "Juan Trinidad Jimenez Armesto" => "juantri94@hotmail.es" }

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source       = { :path => '.' }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.ios.deployment_target  = '12.0'

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source_files  = "StudentFramework/**/*.{h,m,swift}"
  spec.exclude_files = ""

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.resources = "StudentFramework/**/*.{xib}"
  spec.preserve_paths = "StudentFramework/**/*.{h,m,swift,xib}"

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.static_framework = true

  spec.dependency 'StyleFramework'
  spec.dependency 'DeanFramework'
  spec.dependency 'Alamofire'
  spec.dependency 'GoogleMaps'

end
