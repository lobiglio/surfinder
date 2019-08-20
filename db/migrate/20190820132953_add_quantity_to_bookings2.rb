class AddQuantityToBookings2 < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :quantity, :integer
  end
end
