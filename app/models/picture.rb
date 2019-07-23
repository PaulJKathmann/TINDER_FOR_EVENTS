class Picture < ApplicationRecord
  mount_uploader :url, UrlUploader
  belongs_to :user
end
