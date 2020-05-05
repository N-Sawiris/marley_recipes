require 'rails_helper'

RSpec.describe RecipeGetter, type: :service do
  it 'gets a list of recipes' do
    recipes = RecipeGetter.get_all_recipes(1)
    expect(recipes[0].empty?).to eq(false)
  end

  it 'returns nil for wrong image id' do
    recipe = RecipeGetter.get_recipe('11111111')
    expect(recipe.nil?).to eq(true)
  end
end
