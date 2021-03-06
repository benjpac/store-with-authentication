# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Review.destroy_all
User.destroy_all

User.create!(id: 1,
             email: "admin@admin.com",
             password: "password",
             admin: true    
            )

User.create!(id: 2,
             email: "user@user.com",
             password: "password",
            )

30.times do |index|
  new_product = Product.create!(user_id: 1,
                  name: Faker::Commerce.product_name,
                  price: Faker::Commerce.price,
                  description: Faker::Hipster.paragraph(2, true, 4),
                  # image: File.new("ps4-hrdware-large18.jpg"),
                  )
  5.times do |index|
    Review.create!(user_id: 2,
                   product_id: new_product.id,
                   rating: Faker::Number.between(1, 5),
                   content: Faker::Hipster.paragraph,
                   )
  end
end