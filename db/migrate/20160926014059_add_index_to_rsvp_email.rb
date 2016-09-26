class AddIndexToRsvpEmail < ActiveRecord::Migration[5.0]
  def change
    add_index :rsvps, :email, unique: true
  end
end
