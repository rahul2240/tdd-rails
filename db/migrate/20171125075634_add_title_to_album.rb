class AddTitleToAlbum < ActiveRecord::Migration[5.1]
  def change
    add_column :albums, :title, :string
  end
end
