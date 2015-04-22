[
  {name: 'My Mai', seri: '123', description: 'cung okay', image_url: 'https://rubymonk.com/uploads/books/book_cover/4/ruby-primer-ascent.jpg'},
].each do |car_attrs|
  car = Car.new(car_attrs)
  CarRepository.persist(car)
end