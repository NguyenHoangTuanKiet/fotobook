class AddPrivateToAlbums < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :private, :integer
  end
end
