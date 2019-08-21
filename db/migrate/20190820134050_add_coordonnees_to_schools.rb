class AddCoordonneesToSchools < ActiveRecord::Migration[5.2]
  def change
    add_column :schools, :latitude, :float
    add_column :schools, :longitude, :float
    add_column :schools, :spot, :string
  end
end
