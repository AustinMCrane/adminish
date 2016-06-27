$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "adminish/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "adminish"
  s.version     = Adminish::VERSION
  s.authors     = ["Austin Crane"]
  s.email       = ["amcrane1@wichita.edu"]
  s.homepage    = "http://something.com/homepage"
  s.summary     = "idk."
  s.description = "hello"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end
