class AddAveRatingToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :ave_rating, :float
  end
end
