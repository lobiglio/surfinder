class RemovePackIdToSchools < ActiveRecord::Migration[5.2]
  def change
    remove_column :schools, :pack_id
  end
end
