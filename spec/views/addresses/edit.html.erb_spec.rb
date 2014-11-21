require 'rails_helper'

RSpec.describe "addresses/edit", :type => :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :sub_address => "MyString",
      :street_number => "MyString",
      :street => "MyString",
      :city => "MyString",
      :state_id => 1,
      :postcode => 1,
      :country_id => 1
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input#address_sub_address[name=?]", "address[sub_address]"

      assert_select "input#address_street_number[name=?]", "address[street_number]"

      assert_select "input#address_street[name=?]", "address[street]"

      assert_select "input#address_city[name=?]", "address[city]"

      assert_select "input#address_state_id[name=?]", "address[state_id]"

      assert_select "input#address_postcode[name=?]", "address[postcode]"

      assert_select "input#address_country_id[name=?]", "address[country_id]"
    end
  end
end
