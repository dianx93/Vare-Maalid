class CreateExhibitions < ActiveRecord::Migration
  def change
    create_table :exhibitions do |t|
      t.string :name
      t.string :location
      t.string :duration

      t.timestamps null: false
    end
  end
end
