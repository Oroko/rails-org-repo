class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.integer :team_id

      t.timestamps
    end
    add_index :projects, :team_id
  end
end
