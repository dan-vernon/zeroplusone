class AddTypeToSkill < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :skillset, :string
  end
end
