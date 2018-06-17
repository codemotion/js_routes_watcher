namespace :js_routes_watcher do
  desc "Generate routes for javascript"
  task :generate => :environment do
    path = Rails.root.join 'app/javascript/packs/routes.js'
    File.delete path if File.exist? path
    JsRoutes.generate!(path)
  end
end