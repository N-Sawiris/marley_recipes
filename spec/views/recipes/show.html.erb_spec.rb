require 'rails_helper'

RSpec.describe "recipes/show", type: :view do

  it "renders attributes in <p>" do
    @recipe = FactoryBot.build(:recipe, title: "Title", image: "Image", tags: [], description: "MyText", chef_name: "Chef Name")
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Chef Name/)
  end
end
