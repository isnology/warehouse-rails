require 'rails_helper'

RSpec.describe "postcodes/new", :type => :view do
  before(:each) do
    assign(:postcode, Postcode.new(
      :code => "MyString",
      :name => "MyString"
    ))
  end

  it "renders new postcode form" do
    render

    assert_select "form[action=?][method=?]", postcodes_path, "post" do

      assert_select "input#postcode_code[name=?]", "postcode[code]"

      assert_select "input#postcode_name[name=?]", "postcode[name]"
    end
  end
end
