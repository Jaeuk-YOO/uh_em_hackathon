class CreateParsePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :parse_places do |t|
      t.string :menuCount
      t.json :menuList
      t.json :menuboardphotourlList
      t.timestamps
    end
  end
end
