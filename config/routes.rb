Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'welcome#index'

  resources :entry_types
  resources :users
  resources :sessions

  resources :entries do
    resources :reminders
  end

end
