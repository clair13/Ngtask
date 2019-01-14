Rails.application.routes.draw do
  
  root 'citations#index'

  resources :citations
end
