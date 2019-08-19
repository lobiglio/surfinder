class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string "name"
      t.string "address"
      t.text "description"
      t.string "email"
      t.string "phone_number"
      t.string "language"
      t.string "album"
      t.string "main_photo"
      t.integer "level"
      t.bigint "user_id"
      t.bigint "pack_id"
      t.timestamps
    end
  end
end
