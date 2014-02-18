$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hologram_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hologram_rails"
  s.version     = HologramRails::VERSION
  s.authors     = ["Cameron Cundiff"]
  s.email       = ["ccundiff@pivotallabs.com"]
  s.summary     = "An example of using Hologram styleguide in a Rails app."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.2"
  s.add_dependency "hologram"
  s.add_dependency "high_voltage"
end
