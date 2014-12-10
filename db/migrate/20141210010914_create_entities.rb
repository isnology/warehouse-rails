class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :name
      t.integer :warehouse_id
      t.integer :parent_entity_id

      t.timestamps
    end
  end
end
