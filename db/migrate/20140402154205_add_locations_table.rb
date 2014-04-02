class AddLocationsTable < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :code
      t.integer :item_id
      t.text :past_items

      t.timestamps
    end
  end
end
