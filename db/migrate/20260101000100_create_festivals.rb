# db/migrate/20260101000100_create_festivals.rb
# Part A - festivals - CS

class CreateFestivals < ActiveRecord::Migration[7.1]
  def change
    create_table :festivals do |t|
      t.string  :name
      t.date :starts_on
      t.string :city
      t.timestamps
    end
  end
end
