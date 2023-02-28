
puts "review start"
10.times do
    User.create!(
      name: Faker::Name.name
    )
end

10.times do
    Product.create!(
      name: Faker::Commerce.product_name,
    
    )
end
10.times do
    Review.create!(
      comment: Faker::Lorem.paragraph,
      rating: Faker::Number.between(from: 1, to: 5),
      product_id: Faker::Number.between(from: 1, to: 10),
      user_id: Faker::Number.between(from: 1, to: 10)
    )
  end
 puts "reviews ends"


 