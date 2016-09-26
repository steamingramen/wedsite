class Rsvp < ApplicationRecord
  before_save { self.email = email.downcase }
  
  validates :name, :adult_count, :child_count, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: { case_sensitive: false }

end