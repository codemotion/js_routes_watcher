$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "js_routes_watcher/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "js_routes_watcher"
  s.version     = JsRoutesWatcher::VERSION
  s.authors     = ["Dmitriy Beliaev"]
  s.email       = ["admin@cogear.ru"]
  s.homepage    = "https://github.com/codemotion/js-routes-watcher"
  s.summary     = '''Plugin for Ruby on Rails which utilise js-routes gem to work with webpacker.'''
  s.description = """Creating a Guard task to auto-regenerate app/javascript/packs/routes.js file when config/routes.rb is updated."""
  s.license     = "MIT"

  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md","Guardfile","Procfile"]
  s.add_dependency "rails", "~> 5.2.0"
  s.add_dependency "js-routes"
  s.add_dependency "guard"
  s.add_dependency "guard-rake"
end
