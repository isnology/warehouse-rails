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

require 'rails_helper'

RSpec.describe Entity, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
