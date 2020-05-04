class RecipesController < ApplicationController

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.get_all_recipes
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
    @recipe = Recipe.get_recipe(params['id'])
  end
end
