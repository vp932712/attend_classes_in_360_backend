class Student < ApplicationRecord
  has_many :notes
  has_many :lectures, through: :notes
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                 format: { with: VALID_EMAIL_REGEX },
                 uniqueness: { case_sensitive: false }
  validates :name, presence: true               
  validates :password, presence: true
  has_secure_password
end
