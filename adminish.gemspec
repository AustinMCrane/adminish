$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "adminish/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "adminish"
  s.version     = Adminish::VERSION
  s.authors     = ["Austin Crane"]
  s.email       = ["amcrane1@wichita.edu"]
  s.homepage    = "https://github.com/AustinMCrane/adminish"
  s.summary     = "A easy way to describe your adminable models in a rails application that conforms to the rest api structure"
  s.description = "check README.md for more info"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"
end
