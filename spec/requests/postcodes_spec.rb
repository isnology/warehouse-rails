require 'rails_helper'

RSpec.describe "Postcodes", :type => :request do
  describe "GET /postcodes" do
    it "works! (now write some real specs)" do
      get postcodes_path
      expect(response).to have_http_status(200)
    end
  end
end
