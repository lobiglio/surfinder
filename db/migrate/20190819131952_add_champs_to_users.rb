class AddChampsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, default: ''
    add_column :users, :address, :string, default: ''
    add_column :users, :avatar, :string, default: ''
    add_column :users, :role, :integer, default: 0
  end
end
