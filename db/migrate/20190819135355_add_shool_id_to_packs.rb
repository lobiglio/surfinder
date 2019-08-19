class AddShoolIdToPacks < ActiveRecord::Migration[5.2]
  def change
    add_reference :packs, :school, foreign_key: true
  end
end
