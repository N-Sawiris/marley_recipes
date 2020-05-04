class RecipesController < ApplicationController

  # GET /recipes
  # GET /recipes.json
  def index
    @page = params.fetch(:page, 1).to_i
    recipes_result = Recipe.get_all_recipes(@page)
    @recipes = recipes_result[0]
    @more_recipes = recipes_result[1]
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
    @recipe = Recipe.get_recipe(params['id'])
  end
end
