class Course < ApplicationRecord
  validates :name, :description, presence: true
  has_and_belongs_to_many :students
end
