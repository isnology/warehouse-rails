# == Schema Information
#
# Table name: warehouses
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  address_id :integer
#  created_at :datetime
#  updated_at :datetime
#

FactoryGirl.define do
  factory :warehouse do
    name "MyString"
address_id 1
  end

end
