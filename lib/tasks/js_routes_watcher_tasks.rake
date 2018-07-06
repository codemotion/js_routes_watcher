config = YAML.load_file'config/webpacker.yml'
namespace :js_routes_watcher do
  desc "Generate routes for javascript"
  task :generate => :environment do
    path = Rails.root.join "#{config['production']['source_path']}/#{config['production']['source_entry_path']}/routes.js"
    File.delete path if File.exist? path
    JsRoutes.generate!(path)
  end
end