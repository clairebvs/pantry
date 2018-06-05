require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/recipe'

class PantryTest < Minitest::Test
  def test_it_exists
    pantry = Pantry.new

    assert_instance_of Pantry, pantry
  end

  def test_pantry_has_empty_stock_first
    pantry = Pantry.new

    assert_equal ({}), pantry.stock
  end

  def test_can_check_stock_is_empty
    pantry = Pantry.new

    assert_equal 0, pantry.stock_check("Cheese")
  end

  def test_stock_is_filled_after_restock
    pantry = Pantry.new

    pantry.restock("Cheese", 10)
    assert_equal 10, pantry.stock_check("Cheese")
  end

  def test_stock_can_be_filled_multiple_times
    pantry = Pantry.new

    pantry.restock("Cheese", 10)
    pantry.restock("Cheese", 20)

    assert_equal 30, pantry.stock_check("Cheese")
  end

  def test_can_add_recipe_to_shopping_list
    pantry = Pantry.new
    r = Recipe.new("Cheese Pizza")
    r = Recipe.new("Spaghetti")
    r.add_ingredient("Cheese", 20)
    r.add_ingredient("Flour", 20)
    r.ingredients

    pantry.add_to_shopping_list(r)
    assert_equal ({"Cheese" => 20, "Flour" => 20}), pantry.shopping_list
  end

  def test_can_add_more_ingredients_to_shopping_list
    pantry = Pantry.new
    r = Recipe.new("Spaghetti")

    r.add_ingredient("Cheese", 20)
    r.add_ingredient("Flour", 20)
    r.add_ingredient("Spaghetti Noodles", 10)
    r.add_ingredient("Marinara Sauce", 10)
    r.add_ingredient("Cheese", 5)
    pantry.add_to_shopping_list(r)

    assert_equal ({"Cheese" => 25, "Flour" => 20, "Spaghetti Noodles" => 10, "Marinara Sauce" => 10}), pantry.shopping_list
  end

  def test_can_print_shopping_list
    pantry = Pantry.new
    r = Recipe.new("Spaghetti")

    r.add_ingredient("Cheese", 20)
    r.add_ingredient("Flour", 20)
    r.add_ingredient("Spaghetti Noodles", 10)
    r.add_ingredient("Marinara Sauce", 10)
    r.add_ingredient("Cheese", 5)
    pantry.add_to_shopping_list(r)

    assert_equal "* Cheese: 25\n* Flour: 20\n* Spaghetti Noodles: 10\n* Marinara Sauce: 10", pantry.print_shopping_list
  end
end
