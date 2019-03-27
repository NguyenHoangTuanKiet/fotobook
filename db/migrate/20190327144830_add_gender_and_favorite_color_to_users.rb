class AddGenderAndFavoriteColorToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :gender, :integer
    add_column :users, :favorite_color, :string
  end
end
