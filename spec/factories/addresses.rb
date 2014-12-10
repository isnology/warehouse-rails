# == Schema Information
#
# Table name: addresses
#
#  id            :integer          not null, primary key
#  sub_address   :string(255)
#  street_number :string(255)
#  street        :string(255)
#  city          :string(255)
#  postcode_id   :integer
#  state_id      :integer
#  country_id    :integer
#  created_at    :datetime
#  updated_at    :datetime
#

FactoryGirl.define do
  factory :address do
    sub_address "MyString"
street_number "MyString"
street "MyString"
city "MyString"
postcode_id 1
state_id 1
country_id 1
  end

end
