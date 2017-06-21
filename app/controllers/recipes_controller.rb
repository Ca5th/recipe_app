class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @steps = []
    5.times do
      @steps << Step.new
    end
  end

  def create
    @recipe = Recipe.new(name: params["recipe"]["name"])
    recipe_saved = @recipe.save
    params["steps"].each do |key, value|
        recipe_text = value["text"]
        recipe_order = value["order"]

        if(recipe_text != "" and !recipe_order.nil?)
          @step = Step.new(text: recipe_text, order: recipe_order)
          @step.recipe = @recipe
          @step.save
        end
    end

    if recipe_saved
      redirect_to @recipe
    else
      @recipe = Recipe.new
      @steps = []
      5.times do
        @steps << Step.new
      end
      render 'new'
    end

  end

  def show
  end

end
