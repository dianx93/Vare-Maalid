class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :author
      t.string :name

      t.timestamps null: false
    end
  end
end
