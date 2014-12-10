require 'rails_helper'

RSpec.describe "addresses/show", :type => :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :sub_address => "Sub Address",
      :street_number => "Street Number",
      :street => "Street",
      :city => "City",
      :postcode_id => 1,
      :state_id => 2,
      :country_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Sub Address/)
    expect(rendered).to match(/Street Number/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
