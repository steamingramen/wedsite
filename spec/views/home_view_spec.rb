require 'rails_helper'

RSpec.describe "home/index", type: :view do
  it "displays Jon" do
    render
    expect(rendered).to include("Jon")
  end
  
  it "displays Kaitlyn" do
    render
    expect(rendered).to include("Kaitlyn")
  end

  it "should mention that we're getting married" do
    render
    expect(rendered).to include("wedding")
  end

  it "should say where the wedding is" do
    render
    expect(rendered).to include "Ann Arbor City Club"
  end
end
