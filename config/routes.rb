Rails.application.routes.draw do
  resources :articles do
  	collection do
  		get 'me'
  	end
  end
  devise_for :users


  	
  root 'home#index'

  get 'home/private'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
