
Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.name         = "DeanFramework"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of DeanFramework."
  spec.description  = "DESC"
  spec.homepage     = "http://EXAMPLE/DeanFramework"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.license      = "MIT"

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.author             = { "Juan Trinidad Jimenez Armesto" => "juantri94@hotmail.es" }

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source       = { :path => '.' }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.ios.deployment_target  = '12.0'

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source_files  = "DeanFramework/**/*.{h,m,swift}"
  spec.exclude_files = ""

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.resources = "DeanFramework/**/*.{xib}"
  spec.preserve_paths = "DeanFramework/**/*.{h,m,swift,xib}"

end
