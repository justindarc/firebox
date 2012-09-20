Firebox::Engine.routes.draw do
  # Setup routes for Devise
  devise_for  :users,
              class_name: 'Firebox::User',
              :controllers => { sessions: 'firebox/sessions',
                                registrations: 'firebox/registrations',
                                omniauth_callbacks: "firebox/omniauth_callbacks",
                                unlocks: "firebox/unlocks",
                                confirmations: "firebox/confirmations",
                                passwords: "firebox/passwords" }
  devise_scope :user do
    get "/signin" => "sessions#new", as: :signin
    get "/signout" => "sessions#destroy", as: :signout
    get "/signup" => "registrations#new", as: :signup
    get "/forgot" => "passwords#new", as: :signout
    get "/account" => "registrations#edit", as: :account
  end            
end
