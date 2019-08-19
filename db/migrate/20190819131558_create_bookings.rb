class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer "progress", default: 0
      t.date "begin_at"
      t.date "end_at"
      t.bigint "user_id"
      t.bigint "pack_id"
      t.timestamps
    end
  end
end
