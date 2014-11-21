# == Schema Information
#
# Table name: states
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  code       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class State < ActiveRecord::Base
  attr_accessible :name, :code
  belongs_to :addresses

end
