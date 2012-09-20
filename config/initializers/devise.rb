Devise.setup do |config|
  require 'devise/orm/mongoid'
  config.router_name = :firebox
  config.parent_controller = 'ActionController::Base'
end
