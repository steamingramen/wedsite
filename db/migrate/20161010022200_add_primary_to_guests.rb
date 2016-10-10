class AddPrimaryToGuests < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :primary, :boolean
  end
end
