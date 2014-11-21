class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :type
      t.integer :width
      t.integer :depth
      t.integer :hight
      t.integer :max_weight

      t.timestamps
    end
  end
end
