require 'rails_helper'

RSpec.describe "warehouses/edit", :type => :view do
  before(:each) do
    @warehouse = assign(:warehouse, Warehouse.create!(
      :name => "MyString",
      :address_id => 1
    ))
  end

  it "renders the edit warehouse form" do
    render

    assert_select "form[action=?][method=?]", warehouse_path(@warehouse), "post" do

      assert_select "input#warehouse_name[name=?]", "warehouse[name]"

      assert_select "input#warehouse_address_id[name=?]", "warehouse[address_id]"
    end
  end
end
