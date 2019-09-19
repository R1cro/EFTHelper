Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :calibers, only: [:index, :create, :destroy, :update]
    end
  end

  root to: 'main#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
