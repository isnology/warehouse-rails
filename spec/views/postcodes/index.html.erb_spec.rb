require 'rails_helper'

RSpec.describe "postcodes/index", :type => :view do
  before(:each) do
    assign(:postcodes, [
      Postcode.create!(
        :code => "Code",
        :name => "Name"
      ),
      Postcode.create!(
        :code => "Code",
        :name => "Name"
      )
    ])
  end

  it "renders a list of postcodes" do
    render
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
