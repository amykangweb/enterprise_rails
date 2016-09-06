$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_animal/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts_as_animal"
  s.version     = ActsAsAnimal::VERSION
  s.authors     = [""]
  s.email       = [""]
  s.homepage    = "http://www.amykang.net"
  s.summary     = "Acts As Animal"
  s.description = "Acts As Animal"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"
end
