# JsRoutesWatcher
Plugin for *Ruby on Rails* which utilise [js-routes](https://github.com/railsware/js-routes) gem to work with **webpacker**.

Using modern JS-frameworks such as **Vue** or **React**, you have to move all rails-generated routes to javascript.
Then you'll be able to do this:
```javascript
const login_path = Routes.api_login_path()
```

[js-routes](https://github.com/railsware/js-routes) gem gives you the ability to export rails routes to standalone js-file. 

But how to do this automatically? There's gem you're watching on comes to play.

Every time when `config/routes.rb` is updated `Guard` task will regenerate `app/javascript/packs/routes.js` file. And all you have to do – is to import it in your project js-packs.
```javascript
import './routes.js'
// Then
Routes.api_login_path()
```



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
2. Create `Guardfile` in the root of the project and fill it with:
```ruby
guard 'rake', :task => 'js_routes_watcher:generate' do
  watch(%r{^config/routes.rb})
end
```
And then save file.
3. Be shure what you're using **webpacker** gem and starting it with [Foreman](https://github.com/ddollar/foreman) or [Overmind](https://github.com/DarthSim/overmind).
4. `Procfile` must have the following line to start `Guard` task in background:
```
guard: bundle exec guard
```

## Contributing
You're free to contribute via pull requests.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
