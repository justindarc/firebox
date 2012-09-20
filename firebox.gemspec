$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "firebox/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "firebox"
  s.version     = Firebox::VERSION
  s.authors     = ["Nicholas W. Watson"]
  s.email       = ["nwwatson@gmail.com"]
  s.homepage    = "http://github.com/nwwatson/firebox"
  s.summary     = "Firebox is base components of a social system"
  s.description = "Firebox is base components of a social system"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 3.2.8"
<<<<<<< HEAD
  s.add_dependency "mongoid", "~> 3.0.5"
  s.add_dependency "devise", "~> 2.1.2"
=======
  s.add_dependency "omniauth", "~> 1.1.0"
  s.add_dependency "omniauth-identity", "~> 1.1.0"
>>>>>>> upstream/master
  s.add_dependency "omniauth-twitter", "~> 0.0.12"
  s.add_dependency "omniauth-facebook", "~> 1.4.1"
  s.add_dependency "omniauth-google-oauth2", "~> 0.1.13"
  
  s.add_development_dependency 'rspec-rails', '2.9.0'
end
