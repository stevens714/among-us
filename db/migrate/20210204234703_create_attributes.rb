class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |a|
      a.integer :tenacity
      a.integer :intelligence
      a.integer :speed
      a.integer :strength
      a.integer :charm
    end
  end
end
