require 'test_helper'

class RecipeSuggestionTest < ActiveSupport::TestCase

  def setup
    @recipe = Recipe.new(name: "Veggie Chili", time: "60")
    @tomato = Ingredient.new(name: "Tomato")
    @beans = Ingredient.new(name: "Beans")
    @recipe_sug_tomato = RecipeSuggestion.new(recipe: @recipe, ingredient: @tomato)
    @recipe_sug_beans = RecipeSuggestion.new(recipe: @recipe, ingredient: @beans)
  end

  def saveTestModels
    @recipe.save
    @tomato.save
    @beans.save
    @recipe_sug_tomato.save
    @recipe_sug_beans.save
  end

  test "Recipe has a list of ingredients" do
    saveTestModels
    assert_equal @recipe.ingredients.count, 2
  end

  test "Ingredient has a list of recipes" do
    saveTestModels
    assert_equal @tomato.recipes.count, 1
  end
end
