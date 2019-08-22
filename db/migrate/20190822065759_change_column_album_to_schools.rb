class ChangeColumnAlbumToSchools < ActiveRecord::Migration[5.2]
  def change
    remove_column :schools, :album
    add_column :schools, :photo1, :string, default: "https://res.cloudinary.com/dcezznavh/image/upload/v1566309662/igm8jgcfcooplangqtvk.jpg"
    add_column :schools, :photo2, :string, default: "https://res.cloudinary.com/dcezznavh/image/upload/v1566308686/uhfk0fweanhc55ji9xi0.jpg"
  end
end
