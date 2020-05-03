require 'rails_helper'

RSpec.describe "recipes/index", type: :view do
  before(:each) do
    assign(:recipes, [
      FactoryBot.build(:recipe, title: "Title", image: "Image"),
      FactoryBot.build(:recipe, title: "Title", image: "Image")
      ])
  end

  it "renders a list of recipes" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Image".to_s, count: 2
  end
end
