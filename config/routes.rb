Rails.application.routes.draw do
  # active admin
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # users
  devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
      }

  # Defines the root path route ("/")
  root 'home#index'

  get '/timelines', to: 'home#timelines', as: :timelines
  get '/timelines/policies', to: 'home#policies', as: :policies
  get '/timelines/get-involved', to: 'home#get_involved', as: :get_involved

end
