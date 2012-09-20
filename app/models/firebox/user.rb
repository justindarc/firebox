module Firebox
  class User
    include Mongoid::Document 
    # Include default devise modules. Others available are:
    # :token_authenticatable, :confirmable,
    # :lockable, :timeoutable and 
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable
           :omniauthable
  
    # Setup accessible (or protected) attributes for your model
    attr_accessible :email, :password, :password_confirmation, :remember_me
    
    field :first_name, type: String
    field :last_name, type: String
    field :email, type: String
    field :encrypted_password, type: String

    ## Recoverable
    field  :reset_password_token, type: String
    field :reset_password_sent_at, type: DateTime

    ## Rememberable
    field :remember_created_at, type: DateTime

    ## Trackable
    field :sign_in_count, type: Integer, default: 0
    field :current_sign_in_at, type: DateTime
    field :last_sign_in_at, type: DateTime
    field :current_sign_in_ip, type: String
    field :last_sign_in_ip, type: String

    ## Confirmable
    # field   :confirmation_token, type: String
    # field   :confirmed_at, type: DateTime
    # field   :confirmation_sent_at, type: DateTime
    # field   :unconfirmed_email, type: String # Only if using reconfirmable

    ## Lockable
    # field :failed_attempts, type: Integer, default: 0 # Only if lock strategy is :failed_attempts
    # field :unlock_token, type: String # Only if unlock strategy is :email or :both
    # field :locked_at, type: DateTime

    ## Token authenticatable
    # field :authentication_token, type: String




  end
end
