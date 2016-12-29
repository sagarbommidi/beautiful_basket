class CreateCart < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.timestamps null: false
      t.integer :user_id
    end

    add_index :carts, :user_id
  end
end
