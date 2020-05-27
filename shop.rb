require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/movie'

book_1 = Book.new(price: 158,
                  quality: 5,
                  name: "Людина розумна. Історія людства від минулого до майбутнього",
                  genre: "Науково-популярне видання",
                  author: "Ювал Ной Харарі"
)

movie_1 = Movie.new(price: 158,
                    quality: 5,
                    name: "Меч короля Артура",
                    years: 2017,
                    director: "Гай Ричи"
)

current_path = File.dirname(__FILE__ )
begin
  book_3 = Product.from_file()
  movie_3 = Product.from_file()
rescue NotImplementedError => error
  puts error
end


  movie_2 = Movie.from_file(current_path + "/data/film/01.txt")
  book_2 = Book.from_file(current_path + "/data/book/01.txt")

  puts movie_1
  puts movie_2
  puts book_1
  puts book_2

