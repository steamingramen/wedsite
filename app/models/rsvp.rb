class Rsvp < ApplicationRecord
  validates :name, :email, :adult_count, :child_count, presence: true
end
