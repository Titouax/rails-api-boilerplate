class User < ApplicationRecord
    #-- Relations -----------------------------------------------------------------------------------
    has_secure_password

    #-- Callbacks -----------------------------------------------------------------------------------
    before_validation { 
        (self.email = self.email.to_s.downcase) && (self.username = self.username.to_s.downcase) 
    }
  
    #-- Validations ---------------------------------------------------------------------------------
    # Basic password validation, configure to your liking.
    validates_length_of       :password, maximum: 72, minimum: 8, allow_nil: false, allow_blank: false
    validates_confirmation_of :password, allow_nil: false, allow_blank: false
  
    # Make sure email and username are present and unique.
    validates_presence_of     :email
    validates_uniqueness_of   :email
    validates_uniqueness_of   :username
    
    #-- Methods -------------------------------------------------------------------------------------
    # This method tells us if the user is an admin or not.
    def admin?
        role == 'admin'
    end
end
