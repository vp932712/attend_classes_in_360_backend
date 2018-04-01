class Student < ApplicationRecord
  has_many :notes
  has_many :lectures, through: :notes
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true
  has_secure_password
end
