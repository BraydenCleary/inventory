class AddItemsTable < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :location_code
      t.string :state
      t.string :photo_state

      t.timestamps
    end
  end
end
