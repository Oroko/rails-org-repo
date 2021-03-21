class CreateTeamMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :team_members do |t|
      t.integer :user_id
      t.integer :team_id

      t.timestamps
    end
    add_index :team_members, :user_id
    add_index :team_members, :team_id
  end
end
