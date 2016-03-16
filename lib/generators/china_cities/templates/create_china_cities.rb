class CreateChinaCities < ActiveRecord::Migration
  def self.up
    create_table "china_cities", :force => true do |t|
      t.integer "parent_id"
      t.string  "name"
      t.string "area"
      t.integer "level"
      t.string "code"
      t.string "prefix"
      t.timestamps
    end
    add_index "china_cities", "parent_id"
  end

  def self.down
    drop_table :china_cities
  end
end
