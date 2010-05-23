ActionController::Routing::Routes.draw do |map|
  map.resources :fruits
  map.root :controller => "fruits"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
