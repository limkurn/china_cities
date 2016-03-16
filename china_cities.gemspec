$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "china_cities/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "china_cities"
  s.version     = ChinaCities::VERSION
  s.authors     = ["sharp"]
  s.email       = ["liuqiang_0701@163.com"]
  s.homepage    = "https://github.com/sharp/china_cities"
  s.summary     = "中国省市区选择"
  s.description = "中国省市区选择"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.0"
  s.add_dependency 'yajl', '~> 0'
end
