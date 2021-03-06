Rails.application.routes.draw do
  # Ping to ensure site is up
  resources :ping, only: [:index] do
    collection do
      get :auth
    end
  end

  devise_for :users,
    controllers: {
      confirmations: 'confirmations',
      passwords: 'passwords',
      registrations: 'registrations',
      sessions: 'sessions',
    }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
