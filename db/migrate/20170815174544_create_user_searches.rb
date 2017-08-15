class CreateUserSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :user_searches do |t|
      t.integer :user_id
      t.string :email
      t.string :place_id
      t.string :address_name
      t.string :place_x
      t.string :place_y
      t.string :place_phone
      t.string :place_name
      t.timestamps
    end
  end
end
