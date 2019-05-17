Rails.application.routes.draw do
  Blogger::Application.routes.draw do
    resources :articles
  end
end

#mayb inner method has to be outside i.e. outer method needs to be deleted