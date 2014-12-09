require 'rails_helper'

RSpec.describe "entities/edit", :type => :view do
  before(:each) do
    @entity = assign(:entity, Entity.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit entity form" do
    render

    assert_select "form[action=?][method=?]", entity_path(@entity), "post" do

      assert_select "input#entity_name[name=?]", "entity[name]"
    end
  end
end
