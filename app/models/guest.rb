class Guest < ApplicationRecord
  belongs_to :rsvp, inverse_of: :guests

  validates :name, presence: true
end
