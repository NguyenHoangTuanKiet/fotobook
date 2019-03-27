class AddColorRefToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :color
  end
end
