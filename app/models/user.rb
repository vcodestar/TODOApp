class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true

  # Define the association
  has_many :tasks, dependent: :destroy
end
