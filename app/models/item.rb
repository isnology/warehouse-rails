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

class Item < ActiveRecord::Base
end
