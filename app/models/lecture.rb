class Lecture < ApplicationRecord
  has_many :notes
  has_many :students, through: :notes
  belongs_to :institution
end
