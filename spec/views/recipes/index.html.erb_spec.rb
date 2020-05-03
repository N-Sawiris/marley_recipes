require 'rails_helper'

RSpec.describe "recipes/index", type: :view do
  before(:each) do
    assign(:recipes, [
      FactoryBot.build(:recipe, title: "Title", image: "image.jpeg"),
      FactoryBot.build(:recipe, title: "Title", image: "image.jpeg")
      ])
  end

  it "renders a list of recipes" do
    render
    expect(rendered).to match(/Title/)
  end
end
