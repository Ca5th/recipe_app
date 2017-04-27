require 'test_helper'

class RecipeTest < ActiveSupport::TestCase

  def setup
    @recipe = Recipe.new(name: "Veggie Chili", time: "60")
  end

  test "Name should be present" do
    @recipe.name = "    "
    assert_not @recipe.valid?
  end
end
