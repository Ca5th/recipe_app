class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @steps = []
    5.times do
      @steps << Step.new
    end
  end

  def create
    @recipe = Recipe.new(name: params[:name])

  end

  def show
  end

end
