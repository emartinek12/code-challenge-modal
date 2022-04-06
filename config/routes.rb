Rails.application.routes.draw do
  resources :cycles, only: [:index] do
    resources :invitations
  end
  root to: 'cycles#index'
end
