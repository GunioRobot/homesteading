Homesteading::Application.routes.draw do
  root :to => "samples#index"

  resources :statuses, :only => [:new]

  # temporary to show sample posts
  # match ':controller(/:action(/:id(.:format)))'
end
