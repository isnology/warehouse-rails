class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :sub_address
      t.string :street_number
      t.string :street
      t.string :city
      t.integer :state_id
      t.integer :postcode
      t.integer :country_id

      t.timestamps
    end
  end
end
