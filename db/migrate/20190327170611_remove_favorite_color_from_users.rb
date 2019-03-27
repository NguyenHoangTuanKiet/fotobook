class RemoveFavoriteColorFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :favorite_color, :string
  end
end
