# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :email, presence: true, uniqueness: true
  has_many :user_roles
  has_many :roles, through: :user_roles
  has_many :team_members
  has_many :teams, through: :team_members
end
