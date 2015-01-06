$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "store/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "store"
  s.version     = Store::VERSION
  s.authors     = ["Sundaresan"]
  s.email       = ["email"]
  s.homepage    = "Store Engine"
  s.summary     = "Summary of Store."
  s.description = "Description of Store."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.2"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "pg", "~> 0.14.1"
end
