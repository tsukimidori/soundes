Rails.application.routes.draw do
  devise_for :recommenders, controllers: {
    sessions:      'recommenders/sessions',
    passwords:     'recommenders/passwords',
    registrations: 'recommenders/registrations'
  }
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  root 'recommends#index'
  resources :recommends, only: [:index] do
    collection do
      get 'search'
    end
  end
end
