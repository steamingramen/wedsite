class Rsvp < ApplicationRecord
  has_many :guests, inverse_of: :rsvp

  accepts_nested_attributes_for :guests

  before_save do
    self.email = email.downcase
    
  end

  after_save do
    if self.valid?
      blank_guests = self.guests.where("name is NULL or name = ''")
      self.guests.destroy blank_guests
    end
  end
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: { case_sensitive: false }

end
