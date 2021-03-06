Rails.application.routes.draw do
	root to: 'pages#front'	
	get 'home', to: 'businesses#recent'

  get 'ui', controller: 'ui', action: 'index'

	namespace :ui do
		%w(landing business businesses add_review add_business profile sign_in sign_up).each do |action|
			get action, action: action
		end
	end
	
	resources :users, only: [:create]
	resources :sessions, only: [:create]


	get 'sign_up', to: 'users#new'
	get 'sign_in', to: 'sessions#new'
	get 'sign_out', to: 'sessions#destroy'




end
