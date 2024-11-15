class CreateReview < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content
      t.references :restaurant, foreign_key: true
      t.timestamps
    end
  end
end
