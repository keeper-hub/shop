require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

movie = Movie.new(price: 290, quality: 5)

puts "Фильм \"Меч Короля Артура\" стоит - #{movie.price}\nНа складе - #{movie.quality} шт."