class RenameQuantityToMaxPersonToUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :packs, :quantity, :max_persons
  end
end
