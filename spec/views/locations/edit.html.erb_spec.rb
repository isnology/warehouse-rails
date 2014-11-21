require 'rails_helper'

RSpec.describe "locations/edit", :type => :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :name => "MyString",
      :type => 1,
      :width => 1,
      :depth => 1,
      :hight => 1,
      :max_weight => 1
    ))
  end

  it "renders the edit location form" do
    render

    assert_select "form[action=?][method=?]", location_path(@location), "post" do

      assert_select "input#location_name[name=?]", "location[name]"

      assert_select "input#location_type[name=?]", "location[type]"

      assert_select "input#location_width[name=?]", "location[width]"

      assert_select "input#location_depth[name=?]", "location[depth]"

      assert_select "input#location_hight[name=?]", "location[hight]"

      assert_select "input#location_max_weight[name=?]", "location[max_weight]"
    end
  end
end
