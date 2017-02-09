Rails.application.routes.draw do

  root 'home#index'
  get '/member' => 'home#member'
  get '/gallery' => 'home#gallery'
  get '/contact' => 'home#contact'
  get 'money/money_check'
  get 'lecture/lecture'

  devise_for :users, controllers: { sessions: 'users/sessions', passwords: 'users/passwords', registrations: 'users/registrations' }
  devise_for :admins, controllers: { sessions: 'admins/sessions', passwords: 'admins/passwords', registrations: 'admins/registrations' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
