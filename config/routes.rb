Rails.application.routes.draw do
  resources :boards do 
    resources :cards, only: [:create, :update, :destroy]
    resources :layouts, only: [:create, :update, :destroy]
    resources :teams, only: [:create, :update, :delete]
  end
end
