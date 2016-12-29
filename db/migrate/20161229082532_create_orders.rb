class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.timestamps null: false
      t.integer :user_id, null: false
      t.datetime :placed_on, null: false
    end
  end
end
