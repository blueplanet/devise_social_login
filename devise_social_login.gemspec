$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "devise_social_login/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "devise_social_login"
  s.version     = DeviseSocialLogin::VERSION
  s.authors     = ["blueplanet"]
  s.email       = ["erguolinge@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of DeviseSocialLogin."
  s.description = "TODO: Description of DeviseSocialLogin."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"
end
