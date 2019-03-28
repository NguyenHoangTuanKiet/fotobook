class RemoveColorRefAndGenderFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :color
    remove_column :users, :gender, :integer
  end
end
