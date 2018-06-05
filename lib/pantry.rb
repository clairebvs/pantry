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
    # recipe
    recipe.name
    # require "pry"; binding.pry
    array = [{"Cheese"=>20, "Flour"=>20}, {"Cheese" =>5}]
    array << recipe.ingredients
    result = array.each_with_object(Hash.new(0)) do |hash, result|
      hash.each { |key, value| result[key] += value}
        require "pry"; binding.pry
    end

    @shopping_list = result
    # (recipe.ingredients)

    # require "pry"; binding.pry
  end

end
