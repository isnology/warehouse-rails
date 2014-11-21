# == Schema Information
#
# Table name: addresses
#
#  id            :integer          not null, primary key
#  sub_address   :string(255)
#  street_number :string(255)
#  street        :string(255)
#  city          :string(255)
#  state_id      :integer
#  postcode      :integer
#  country_id    :integer
#  created_at    :datetime
#  updated_at    :datetime
#

require 'rails_helper'

RSpec.describe Address, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
