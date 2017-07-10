class RemovePhotoIdFromReviews < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :photo_id, :integer
    add_column :reviews, :product_id, :integer
    add_column :products, :user_id, :integer
  end
end
