Firebox::Engine.routes.draw do
  devise_for :users, :class_name => "Firebox::User"

end
