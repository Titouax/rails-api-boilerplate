class Category < ApplicationRecord
    #-- Relations -----------------------------------------------------------------------------------
    has_many :posts
    
    #-- Callbacks -----------------------------------------------------------------------------------
    before_validation { 
        self.name = self.name.to_s.downcase.capitalize
    }

    #-- Validations ---------------------------------------------------------------------------------
    # Make sure name is present and unique.
    validates_presence_of     :name
    validates_uniqueness_of   :name

    #-- Methods -------------------------------------------------------------------------------------
end
