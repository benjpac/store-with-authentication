class RemoveAveRatingFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :ave_rating, :float
    add_column :products, :avg_rating, :integer
  end
end
