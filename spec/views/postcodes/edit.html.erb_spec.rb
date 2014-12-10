require 'rails_helper'

RSpec.describe "postcodes/edit", :type => :view do
  before(:each) do
    @postcode = assign(:postcode, Postcode.create!(
      :code => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit postcode form" do
    render

    assert_select "form[action=?][method=?]", postcode_path(@postcode), "post" do

      assert_select "input#postcode_code[name=?]", "postcode[code]"

      assert_select "input#postcode_name[name=?]", "postcode[name]"
    end
  end
end
