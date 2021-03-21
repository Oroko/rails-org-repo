class AddYearsOfExperienceToUserRole < ActiveRecord::Migration[6.1]
  def change
    add_column :user_roles, :years_of_experience, :integer
  end
end
