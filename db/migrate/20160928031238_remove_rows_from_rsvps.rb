class RemoveRowsFromRsvps < ActiveRecord::Migration[5.0]
  def change
    change_table :rsvps do |t|
      t.remove :adult_count, :child_count, :name
    end
  end
end
