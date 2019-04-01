class AddPrivateToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :private, :integer
  end
end
