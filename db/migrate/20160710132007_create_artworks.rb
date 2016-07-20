class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :author
      t.integer :year
      t.string :type
      t.integer :height
      t.integer :width
      t.string :picture
      t.references :album, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
