require 'rails_helper'

RSpec.describe "entities/new", :type => :view do
  before(:each) do
    assign(:entity, Entity.new(
      :name => "MyString",
      :warehouse_id => 1,
      :parent_entity_id => 1
    ))
  end

  it "renders new entity form" do
    render

    assert_select "form[action=?][method=?]", entities_path, "post" do

      assert_select "input#entity_name[name=?]", "entity[name]"

      assert_select "input#entity_warehouse_id[name=?]", "entity[warehouse_id]"

      assert_select "input#entity_parent_entity_id[name=?]", "entity[parent_entity_id]"
    end
  end
end
