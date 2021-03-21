# frozen_string_literal: true

class Role < ApplicationRecord
  validates :title, presence: true
  validates :role_description, presence: true

  has_many :user_roles
  has_many :users, through: :user_roles
end
