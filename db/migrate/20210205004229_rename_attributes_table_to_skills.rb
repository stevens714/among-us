class RenameAttributesTableToSkills < ActiveRecord::Migration
  def change
    rename_table :attributes, :skills
  end
end
