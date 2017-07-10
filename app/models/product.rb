class Product < ApplicationRecord

  belongs_to :user
  has_many :reviews

  has_attached_file :image, styles: { large: "800x300", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :image,
    content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  def self.get_avg_rating(product)
    total = 0
    product.reviews.each do |review|
      total += review.rating
    end
    return total/product.reviews.length
  end

end
