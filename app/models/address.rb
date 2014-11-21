# == Schema Information
#
# Table name: addresses
#
#  id            :integer          not null, primary key
#  sub_address   :string(255)
#  street_number :string(255)
#  street        :string(255)
#  city          :string(255)
#  state_id      :integer
#  postcode      :integer
#  country_id    :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Address < ActiveRecord::Base
  #attr_accessible :sub_address, :street_number, :street, :city, :postcode
  belongs_to :warehouses
  has_one :states
  has_one :countries
  validates :state_id, presence: true
  validates :country_id, presence: true

end
