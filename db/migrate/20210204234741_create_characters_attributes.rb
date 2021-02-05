class CreateCharactersAttributes < ActiveRecord::Migration
  def change
    create_table :characters_attributes do |c|
      c.integer :character_id
      c.integer :attribute_id
    end
  end
end
