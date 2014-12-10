require 'rails_helper'

RSpec.describe "entities/show", :type => :view do
  before(:each) do
    @entity = assign(:entity, Entity.create!(
      :name => "Name",
      :warehouse_id => 1,
      :parent_entity_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
