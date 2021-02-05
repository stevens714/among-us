class ChangeJoinTableOrder < ActiveRecord::Migration
  def change
    drop_table :characters_attributes
    create_join_table :skills, :characters do |t|
      t.integer :skill_id
      t.integer :character_id
    end
  end
end
