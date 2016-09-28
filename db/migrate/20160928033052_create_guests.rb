class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.string :name, null: false
      t.boolean :adult

      t.timestamps
    end
    add_reference(:guests, :rsvps, foreign_key: true)
  end
end
