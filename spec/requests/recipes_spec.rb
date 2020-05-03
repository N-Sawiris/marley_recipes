 require 'rails_helper'

RSpec.describe "/recipes", type: :request do
  describe "GET /index" do
    it "renders a successful response" do
      FactoryBot.build(:recipe)
      get recipes_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      recipe = FactoryBot.build(:recipe)
      get recipe_url(recipe)
      expect(response).to be_successful
    end
  end
end
