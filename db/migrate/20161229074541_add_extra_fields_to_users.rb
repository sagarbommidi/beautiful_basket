class AddExtraFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :full_name, :string, null: false
    add_column :users, :role_id, :integer, null: false, default: 1
  end
end
