# == Schema Information
#
# Table name: addresses
#
#  id            :integer          not null, primary key
#  sub_address   :string(255)
#  street_number :string(255)
#  street        :string(255)
#  city          :string(255)
#  postcode_id   :integer
#  state_id      :integer
#  country_id    :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Address < ActiveRecord::Base

  extend ModelHelpers

  self.select(:street_number, :street, :city)

end
