class Guest < ApplicationRecord
  belongs_to :rsvp, inverse_of: :guest

  validates :name, presence: true
end
