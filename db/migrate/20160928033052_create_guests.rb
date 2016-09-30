class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.belongs_to :rsvp, index: true
      t.string :name
      t.boolean :adult

      t.timestamps
    end
  end
end
