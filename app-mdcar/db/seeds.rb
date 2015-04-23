
image = ["http://www.automotorblog.com/wp-content/uploads/2009/12/mercedes-cls55-amg-by-mec-1.jpg"];



def create_car(name, seri, description, image_url)
  [
    {name: @name, seri: @seri, description: @description, image_url: @image_url},
  ].each do |car_attrs|
    car = User.new(car_attrs)
    CarRepository.persist(car)
  end
end

def create_cars
  for i in 1..100
    create_car("name #{i}", "00#{i}", "description #{i}", image)
  end
end

#create_cars
#[
#  {name: 'My Mai', seri: '123', description: 'cung okay', image_url: 'https://rubymonk.com/uploads/books/book_cover/4/ruby-primer-ascent.jpg'},
#].each do |car_attrs|
#  car = Car.new(car_attrs)
#  CarRepository.persist(car)
#end
