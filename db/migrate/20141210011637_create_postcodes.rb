class CreatePostcodes < ActiveRecord::Migration
  def change
    create_table :postcodes do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
