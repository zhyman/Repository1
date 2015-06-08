class AddStarRatingToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :star_rating, :integer
  end
end
