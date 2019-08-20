class AddQuantityToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :quantity, :integer, default: 0
  end
end
