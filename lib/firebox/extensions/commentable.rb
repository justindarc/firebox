module Firebox
  module Extensions
    module Commentable #:nodoc:
      def self.included(base)
        embeds_many :comments, as: :commentable, class_name: "Firebox::Comment"
        include EntropiSocial::Commentable::Base::InstanceMethods
      end
    
      module InstanceMethods
        # Helper that allows you to add a new comment to the model
        def add_comment(comment)
          comments << comment
        end
      end
    end
  end
end
