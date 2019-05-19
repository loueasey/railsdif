Rails.application.routes.draw do
  Blogger::Application.routes.draw do
    root to: 'articles#index' 	
    resources :articles do
	  resources :comments
	end
  end
end

#mayb inner method has to be outside i.e. outer method needs to be deleted