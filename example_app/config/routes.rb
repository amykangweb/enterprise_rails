Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	
  namespace :physical do
  	namespace :movies do
  		resources :movies, param: :primary
  	end
  end

  namespace :physical do
  	namespace :orders do
  		resources :orders, param: :primary
  	end
  end

	root "physical/tests#index"
end
