Rails.application.routes.draw do
  devise_for :users
  get '/about', to: 'application#about'
  get '/contact', to: 'application#contact'
end
