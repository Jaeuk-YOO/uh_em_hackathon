class CreateUserLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :user_locations do |t|

      t.integer :user_id
      t.string  :location_x
      t.string  :location_y
      t.string  :location_address

      t.timestamps
    end
  end
end
