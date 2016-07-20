class MuudaTulbaNime < ActiveRecord::Migration
  def change
	rename_column :artworks, :type, :style
  end
end
