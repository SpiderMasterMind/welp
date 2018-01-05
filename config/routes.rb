Rails.application.routes.draw do
  get 'ui', controller: 'ui', action: 'index'


	namespace :ui do
		%w(business businesses add_review add_business profile sign_in sign_up).each do |action|
			get action, action: action
		end
	end
end
