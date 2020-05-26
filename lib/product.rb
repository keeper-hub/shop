
class Product

  attr_reader :price
  attr_reader :quality

  def initialize(param)
    @price = param[:price]
    @quality = param[:quality]
  end

end