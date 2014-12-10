# == Schema Information
#
# Table name: entities
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  warehouse_id     :integer
#  parent_entity_id :integer
#  created_at       :datetime
#  updated_at       :datetime
#

FactoryGirl.define do
  factory :entity do
    name "MyString"
warehouse_id 1
parent_entity_id 1
  end

end
