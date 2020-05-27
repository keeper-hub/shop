
class Product

  attr_accessor :price, :quality, :name

  def initialize(param)
    @price = param[:price]
    @quality = param[:quality]
    @name = param[:name]
  end

  def to_s
    "#{@price} грн. (осталось #{@quality} шт.)"
  end

  def update(param)
    @price = param[:price]
    @quality = param[:quality]
    @name = param[:name]
  end

  def self.from_file
    raise NotImplementedError
  end
end