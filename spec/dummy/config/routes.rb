Rails.application.routes.draw do
  mount Firebox::Engine => "/"

  root :to => "home#index"
end
