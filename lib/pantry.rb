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

    array << recipe.ingredients
    result = array.each_with_object(Hash.new(0)) do |hash, result|
      hash.each { |key, value| result[key] += value}
    end

    @shopping_list = result
    @shopping_list = recipe.ingredients
  end

  def print_shopping_list
    names = @shopping_list.keys
    values = @shopping_list.values
    shopping_list_name = " "

    names.each do |name|
        values.each do |amount|
          shopping_list_name += " * #{name}: #{amount}\n"
        end
    end
    return shopping_list_name
  end

end
