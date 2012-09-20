require 'rails/generators/base'
require 'generators/bootstrapped'

module Firebox
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc "This generator installs Firebox social network components in to your rails application"
      
      def create_mongoid_config
        copy_file "mongoid.yml", "config/mongoid.yml"
      end
      
      def copy_devise_config

      end

    end
  end
end