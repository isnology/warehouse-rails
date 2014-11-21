json.array!(@addresses) do |address|
  json.extract! address, :id, :sub_address, :street_number, :street, :city, :state_id, :postcode, :country_id
  json.url address_url(address, format: :json)
end
