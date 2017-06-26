Rails.application.routes.draw do
  resources :prefectures
  root to: 'prefectures#index'
end
