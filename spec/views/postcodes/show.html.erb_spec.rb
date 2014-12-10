require 'rails_helper'

RSpec.describe "postcodes/show", :type => :view do
  before(:each) do
    @postcode = assign(:postcode, Postcode.create!(
      :code => "Code",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Name/)
  end
end
