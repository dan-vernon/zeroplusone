class RemoveTypeFromSkills < ActiveRecord::Migration[5.2]
  def change
    remove_column :skills, :type, :string
  end
end
