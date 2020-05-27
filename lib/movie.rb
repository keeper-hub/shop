class Movie < Product

  attr_accessor :director, :years

  def self.from_file(file_path)
    #0 Название фильма
    #1 год выхода
    #2 режисёр
    #3 Цена
    #4 Остаток

    lines = File.readlines(file_path).map{ |l| l.chomp }

    self.new(
        name: lines[0],
        years: lines[1],
        director: lines[2],
        price: lines[3],
        quality: lines[4]
    )

  end




  def initialize(param)
    super
    @years = param[:years]
    @director = param[:director]
  end

  def to_s
    "Фильм \"#{@name}\", #{@years}, режисёр - #{@director}, #{super }"
  end

  def update(param)
    @years = param[:years]
    @director = param[:director]
  end



end
