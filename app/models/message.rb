class Message < ApplicationRecord
  belongs_to :user_or_admin, polymorphic: true
end
