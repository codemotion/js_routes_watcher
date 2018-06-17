# JsRoutesWatcher
Plugin for *Ruby on Rails* which utilise [js-routes](https://github.com/railsware/js-routes) gem to work with **webpacker**.

## Installation
All you need to start using plugin is to:

1. Install gem.
Add this line to your application's Gemfile:
```ruby
gem 'js_routes_watcher', github: "codemotion/js_routes_watcher"
```
And then execute:
```bash
$ bundle
```
1. Create `Guardfile` in the root of the project and fill it with:
```ruby
guard 'rake', :task => 'js_routes_watcher:generate' do
  watch(%r{^config/routes.rb})
end
```
1. Be shure what you're using **webpacker** gem and starting it with (Foreman)[https://github.com/ddollar/foreman] or (Overmind)[https://github.com/DarthSim/overmind].
2. `Procfile` must have the following line to start `Guard` task in background:
```
guard: bundle exec guard
```

Or install it yourself as:
```bash
$ gem install js_routes_watcher
```

## Contributing
You're free to contribute via pull requests.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
