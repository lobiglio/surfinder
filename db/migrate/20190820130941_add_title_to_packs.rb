class AddTitleToPacks < ActiveRecord::Migration[5.2]
  def change
    add_column :packs, :title, :string
  end
end
