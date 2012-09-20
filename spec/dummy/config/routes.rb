Rails.application.routes.draw do

  mount Firebox::Engine => "/"

  root to: "welcome#index"
end
