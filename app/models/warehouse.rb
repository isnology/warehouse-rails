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

# look up polymorphic associations for rules model
class Warehouse < ActiveRecord::Base
  has_one :addresses, dependent: :destroy
  validates :address_id, presence: true
  has_many :entities, dependent: :destroy
end
