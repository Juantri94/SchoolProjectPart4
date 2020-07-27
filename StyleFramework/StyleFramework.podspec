
Pod::Spec.new do |spec|

  spec.name         = "StyleFramework"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of StyleFramework."
  spec.description  = "DESC"
  spec.homepage     = "http://EXAMPLE/StyleFramework"
  spec.license      = "MIT"

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.author             = { "Juan Trinidad Jimenez Armesto" => "juantri94@hotmail.es" }

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source       = { :path => '.' }

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source_files  = "StyleFramework/**/*.{h,m,swift}"
  spec.exclude_files = ""

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.resources = "StyleFramework/**/*.{xib}"
  spec.preserve_paths = "StyleFramework/**/*.{h,m,swift,xib}"

end
