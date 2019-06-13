class Student < ApplicationRecord
  @@num = 5
  has_many :ducks
  validates :name, presence: true, uniqueness: true
  validates :mod, presence: true, inclusion: { in:1..@@num, message: "Number can only be between 1..#{@@num}" },numericality: { only_integer: true }
end
