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

  def print_shopping_list
    @shopping_list
    @shopping_list.map do |element|
      element[shopping_list]
    end
    "* #{@shopping_list[key]}"

  #   def report
  # string_to_return = "Name : #{@name} \nQualifications :"
  # @licenses.each do |element|
  #   string_to_return += "\n- License #{element} "
  # end
  #   return string_to_return

  end

end
