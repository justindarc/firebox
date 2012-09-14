Rails.application.routes.draw do
  mount Firebox::Engine => "/firebox"

  root :to => "home#index"
end
