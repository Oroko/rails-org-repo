class Team < ApplicationRecord 
  validates :team_name, presence: true, uniqueness: true
  has_many :projects 
  has_many :team_members
  has_many :users, through: :team_members
end
