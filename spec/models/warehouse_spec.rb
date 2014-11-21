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

require 'rails_helper'

RSpec.describe Warehouse, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
