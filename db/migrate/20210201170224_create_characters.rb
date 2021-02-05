class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |c|
      c.string :name
      c.string :color
      c.integer :age
      c.string :accessory
      c.string :special_ability
      c.text :backstory
      c.string :image
      c.integer :user_id
    end
  end
end
