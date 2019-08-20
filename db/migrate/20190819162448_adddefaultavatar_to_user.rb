class AdddefaultavatarToUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :avatar, :string, default: "https://res.cloudinary.com/dcezznavh/image/upload/v1566231827/sa4zukx9nflvkeg5510x.jpg"
  end
end
