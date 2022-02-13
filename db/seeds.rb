%i[fruits vegetables ingredient].each do |method|
  30.times do
    product = Product.new
    product.name = Faker::Food.send(method)
    product.description = Faker::Lorem.paragraph_by_chars(number: 1024)
    product.save
  end
end
