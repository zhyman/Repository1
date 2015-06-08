class AddVotesToPhotos < ActiveRecord::Migration
  def change
  	add_column :photos, :vote, :int
  end
end
