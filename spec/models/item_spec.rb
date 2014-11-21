# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  age         :date
#  created_at  :datetime
#  updated_at  :datetime
#

require 'rails_helper'

RSpec.describe Item, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
