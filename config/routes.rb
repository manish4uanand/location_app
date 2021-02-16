Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	resources :locations, except: [:update, :edit, :destroy]
	root 'locations#index'
end
