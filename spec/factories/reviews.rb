FactoryGirl.define do
  factory :review do
    content "I hate this product!!!"
    user_id 1
    photo_id 1
    rating 1
  end
end
