class Event < ApplicationRecord
  mount_uploader :logo, LogoUploader
  mount_uploader :background_image, BackgroundImageUploader
  has_many :participants
  belongs_to :user
end
