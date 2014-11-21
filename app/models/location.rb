# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  type       :integer
#  width      :integer
#  depth      :integer
#  hight      :integer
#  max_weight :integer
#  created_at :datetime
#  updated_at :datetime
#

class Location < ActiveRecord::Base
end
