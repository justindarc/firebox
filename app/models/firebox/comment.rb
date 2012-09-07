class Firebox::Comment 
  include Mongoid::Document
  
  embedded_in :commentable, polymorphic: true
end