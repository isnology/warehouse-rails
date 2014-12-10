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

class Entity < ActiveRecord::Base
  belongs_to :warehouse
  has_many :subordinates, class_name: "Entity", foreign_key: "parent_entity_id"
  belongs_to :parent_entity, class_name: "Entity"
end
