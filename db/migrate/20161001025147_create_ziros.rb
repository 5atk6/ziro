class CreateZiros < ActiveRecord::Migration
  def change
    create_table :ziros do |t|
      t.string :name
      t.float  :longitude
      t.float  :latitude
      t.float :distance
      t.string :imageurl
      
      t.timestamps null: false
    end
  end
end
