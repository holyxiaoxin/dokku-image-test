Rails.application.routes.draw do
  resources :mid_scores
  resources :low_scores
  resources :high_scores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
