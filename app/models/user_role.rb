# frozen_string_literal: true

class UserRole < ApplicationRecord
  validates :years_of_experience, numericality: { other_than: 0 }
  belongs_to :user
  belongs_to :role
end
