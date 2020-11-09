class Post < ApplicationRecord
  #-- Relations -----------------------------------------------------------------------------------
  belongs_to :user
  belongs_to :category

  #-- Callbacks -----------------------------------------------------------------------------------

  #-- Validations ---------------------------------------------------------------------------------
  # Make sure name is present and unique.
  validates_length_of       :title, maximum: 100, minimum: 10, allow_nil: false, allow_blank: false
  validates_presence_of     :content

  #-- Methods -------------------------------------------------------------------------------------
end
