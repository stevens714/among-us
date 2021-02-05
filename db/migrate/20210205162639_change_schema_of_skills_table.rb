class ChangeSchemaOfSkillsTable < ActiveRecord::Migration
  def change
    remove_column :skills, :tenacity, :integer
    remove_column :skills, :intelligence, :integer
    remove_column :skills, :speed, :integer
    remove_column :skills, :strength, :integer
    remove_column :skills, :charm, :integer
    add_column :skills, :name, :string
    add_column :skills, :value, :integer
  end
end

