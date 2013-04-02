$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "fooltip/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "fooltip"
  s.version     = Fooltip::VERSION
  s.authors     = ["Intesys S.r.l.", "Daniel Jonasson"]
  s.email       = ["daniel.jonasson@intesys.it"]
  s.homepage    = "https://github.com/intesys/fooltip"
  s.summary     = %q{Fooltip - when a tooltip just isn't enough.}
  s.description = %q{Fooltip - when a tooltip just isn't enough.}

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile",
    "README.rdoc"]

  s.add_dependency "rails", ">= 3.1.0"
  s.add_dependency "globalize3", ">= 0.3.0"
  s.add_dependency "carrierwave", ">= 0.8.0"
end
