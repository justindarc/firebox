module Firebox
  module Extensions
    module Commentable
      # This module will allow you to easily add comments to a Mongoid Model
      # An example use of this code would be
      #
      # class Picture
      #   include Mongoid::Document
      #   include Firebox::Extensions::Commentable
      #   # Define the rest of your class here
      # end
      def self.included(base)
        embeds_many :comments, as: :commentable, class_name: "Firebox::Comment"
        include EntropiSocial::Commentable::Base::InstanceMethods
      end
    
      module InstanceMethods
        # Helper that allows you to add a new comment to the model
        # An example usage of this would be if you had a model Picture
        #
        # picture = Picture.find(1)
        # comment = Comment.new(text: "This is my comment", user: current_user)
        # picture.add_comment(comment)
        # picture.save!
        #
        def add_comment(comment)
          comments << comment
        end
      end
    end
  end
end
