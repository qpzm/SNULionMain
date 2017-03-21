class Homework < ApplicationRecord
  has_many :submitted_homeworks
  belongs_to :week
end
