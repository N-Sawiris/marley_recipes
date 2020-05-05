require 'rails_helper'

RSpec.describe "recipes/index", type: :view do
  it "renders a list of recipes" do
    render
    expect(rendered).to match(/No Recipes Found/)
  end
end
