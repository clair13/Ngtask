Rails.application.routes.draw do
  
  root 'citations#index'

  resources :citations do
    resources :comments
  end
end
