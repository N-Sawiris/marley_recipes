 require 'rails_helper'

RSpec.describe "/recipes", type: :request do
  describe "GET /index" do
    it "renders a successful response" do
      get recipes_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      get recipe_url("61XHcqOBFYAYCGsKugoMYK")
      expect(response).to be_successful
    end
  end
end
