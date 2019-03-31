class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :attachment
      t.string :title
      t.text :description
      t.references :imageable, polymorphic: true

      t.timestamps
    end
  end
end
