class ChangeQuantityToMaxPerson < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :quantity, :max_persons
  end
end
