class CreatePacks < ActiveRecord::Migration[5.2]
  def change
    create_table :packs do |t|
      t.integer "price"
      t.string "description"
      t.integer "quantity"
      t.timestamps
    end
  end
end
