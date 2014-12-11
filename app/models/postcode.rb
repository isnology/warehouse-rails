# == Schema Information
#
# Table name: postcodes
#
#  id         :integer          not null, primary key
#  code       :string(255)
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Postcode < ActiveRecord::Base

  extend ModelHelpers

  self.select(:code)

end
