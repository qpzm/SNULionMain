class Week < ApplicationRecord
  has_many :seminars
  has_many :homeworks
end
