class SubmittedHomework < ApplicationRecord
  belongs_to :homework
  belongs_to :user
end
