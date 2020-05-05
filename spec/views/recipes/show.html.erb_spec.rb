require 'rails_helper'

RSpec.describe "recipes/show", type: :view do

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/>No Recipe Found/)
  end
end
