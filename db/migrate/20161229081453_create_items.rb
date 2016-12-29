class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.timestamps null: false
      t.string :name, null: false
      t.string :image
      t.integer :quantity, default: 0
      t.decimal :price, null: false
    end
  end
end
