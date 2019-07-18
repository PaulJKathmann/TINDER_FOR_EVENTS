class Event < ApplicationRecord
  mount_uploader :logo, LogoUploader
  mount_uploader :background_image, BackgroundImageUploader
  has_many :participants
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
end
