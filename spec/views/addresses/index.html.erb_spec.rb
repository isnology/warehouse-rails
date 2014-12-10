require 'rails_helper'

RSpec.describe "addresses/index", :type => :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        :sub_address => "Sub Address",
        :street_number => "Street Number",
        :street => "Street",
        :city => "City",
        :postcode_id => 1,
        :state_id => 2,
        :country_id => 3
      ),
      Address.create!(
        :sub_address => "Sub Address",
        :street_number => "Street Number",
        :street => "Street",
        :city => "City",
        :postcode_id => 1,
        :state_id => 2,
        :country_id => 3
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => "Sub Address".to_s, :count => 2
    assert_select "tr>td", :text => "Street Number".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
