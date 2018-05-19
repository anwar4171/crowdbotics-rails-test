Rails.application.routes.draw do
  root 'phrases#index'
  resources :phrases do
  	collection do 
  		get 'get_new_phrase'
  		get 'clear_phrases'
  	end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
