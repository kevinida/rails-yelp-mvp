class ChangeRatingstorating < ActiveRecord::Migration[7.1]
  def change
    rename_column :reviews, :ratings, :rating
  end
end
