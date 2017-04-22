Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/snulion', as: 'rails_admin'
  mount ActionCable.server => '/cable'

  root 'home#index'
  get '/member' => 'home#member'
  get '/attendance' => 'attendance#attendance_record'
  get '/gallery' => 'home#gallery'
  get '/contact' => 'home#contact'
  get 'money/money_check'

  get '/etl' => 'etl#index'
  get 'etl/admin'
  get '/seminar' => 'etl#seminar'

  resources :homeworks do
    resources :submitted_homeworks, shallow: true
  end
  resources :messages, only: [:index]

  devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_for :admins, controllers: { sessions: 'admins/sessions' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
