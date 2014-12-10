class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.string :name
      t.integer :address_id

      t.timestamps
    end
  end
end
