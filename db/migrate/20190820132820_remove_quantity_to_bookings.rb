class RemoveQuantityToBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :quantity
  end
end
