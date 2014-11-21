require 'rails_helper'

RSpec.describe "states/edit", :type => :view do
  before(:each) do
    @state = assign(:state, State.create!(
      :name => "MyString",
      :code => "MyString"
    ))
  end

  it "renders the edit state form" do
    render

    assert_select "form[action=?][method=?]", state_path(@state), "post" do

      assert_select "input#state_name[name=?]", "state[name]"

      assert_select "input#state_code[name=?]", "state[code]"
    end
  end
end
