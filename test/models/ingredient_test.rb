require 'test_helper'

class IngredientTest < ActiveSupport::TestCase

  def setup
    @tomato = Ingredient.new(name: "Tomato")
  end

  test "Name should be present" do
    @tomato.name = "   "
    assert_not @tomato.valid?
  end
end
