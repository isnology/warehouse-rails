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

class Warehouse < ActiveRecord::Base
  attr_accessible :name
  has_one :addresses, dependent: :destroy
  validates :address_id, presence: true
end
