class Book < Product

  attr_accessor :genre, :author

  def initialize(param)
    super
    @genre = param[:genre]
    @author = param[:author]
  end

  def to_s
    "Книга \"#{@name}\", #{@genre}, автор - #{@author}, #{super }"
  end

  def update(param)
    super
    @genre = param[:genre]
    @author = param[:author]
  end

  def self.from_file(file_path)
    # Название книги
    # Фамилия и имя автора
    # автор
    # Цена
    # Остаток

    lines = File.readlines(file_path).map{
        |l| l.chomp
    }
    self.new(
        name:lines[0],
        author: lines[1],
        genre: lines[2],
        price: lines[3],
        quality: lines[4]
    )

  end

end