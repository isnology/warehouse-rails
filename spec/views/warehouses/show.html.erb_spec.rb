require 'rails_helper'

RSpec.describe "warehouses/show", :type => :view do
  before(:each) do
    @warehouse = assign(:warehouse, Warehouse.create!(
      :name => "Name",
      :address_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
