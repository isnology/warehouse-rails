require 'rails_helper'

RSpec.describe "entities/new", :type => :view do
  before(:each) do
    assign(:entity, Entity.new(
      :name => "MyString"
    ))
  end

  it "renders new entity form" do
    render

    assert_select "form[action=?][method=?]", entities_path, "post" do

      assert_select "input#entity_name[name=?]", "entity[name]"
    end
  end
end
