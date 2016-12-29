class CreateSelectedItems < ActiveRecord::Migration[5.0]
  def change
    create_table :selected_items do |t|
      t.integer :itemable_id
      t.string  :itemable_type
      t.integer :quantity, null: false, default: 1
      t.decimal :price, null: false
      t.integer :item_id
      t.timestamps
    end

    add_index :selected_items, [:itemable_id, :itemable_type]
  end
end
