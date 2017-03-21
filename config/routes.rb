Rails.application.routes.draw do

  root 'home#index'
  get '/member' => 'home#member'
  get '/gallery' => 'home#gallery'
  get '/contact' => 'home#contact'
  get 'money/money_check'
  get 'lecture/lecture'

  devise_for :users
  devise_for :admins

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
