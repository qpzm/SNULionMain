class SubmittedHomework < ApplicationRecord
  # mount_uploader :img, UploaderUploader
  belongs_to :homework
  belongs_to :user
end
