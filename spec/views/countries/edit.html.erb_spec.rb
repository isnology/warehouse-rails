require 'rails_helper'

RSpec.describe "countries/edit", :type => :view do
  before(:each) do
    @country = assign(:country, Country.create!(
      :name => "MyString",
      :code => "MyString"
    ))
  end

  it "renders the edit country form" do
    render

    assert_select "form[action=?][method=?]", country_path(@country), "post" do

      assert_select "input#country_name[name=?]", "country[name]"

      assert_select "input#country_code[name=?]", "country[code]"
    end
  end
end
