class Pantry
  attr_reader :stock,
              :shopping_list

  def initialize
    @stock = {}
    @food_counter = 0
    @shopping_list = {}
  end

  def stock_check(food)
    @food_counter
  end

  def restock(food, quantity)
    @food_counter += quantity
  end

  def add_to_shopping_list(recipe)
    @shopping_list = recipe.ingredients
  end

end
