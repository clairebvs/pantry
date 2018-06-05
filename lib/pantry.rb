class Pantry
  attr_reader :stock

  def initialize
    @stock = {}
    @food_counter = 0
  end

  def stock_check(food)
    @food_counter
  end

  def restock(food, quantity)
    @food_counter += quantity
  end

end
