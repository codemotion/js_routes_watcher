Rails.application.routes.draw do
  mount JsRoutesWatcher::Engine => "/js_routes_watcher"
end
