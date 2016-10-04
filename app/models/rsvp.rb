class Rsvp < ApplicationRecord
  has_many :guests, inverse_of: :rsvp

  accepts_nested_attributes_for :guests, reject_if: lambda { |attributes|
    attributes['name'].blank? }

  before_save { self.email = email.downcase }
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: { case_sensitive: false }

end
