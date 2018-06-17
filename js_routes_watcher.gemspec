$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "js_routes_watcher/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "js_routes_watcher"
  s.version     = JsRoutesWatcher::VERSION
  s.authors     = ["Dmitriy Beliaev"]
  s.email       = ["admin@cogear.ru"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of JsRoutesWatcher."
  s.description = "TODO: Description of JsRoutesWatcher."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"

  s.add_development_dependency "sqlite3"
end
