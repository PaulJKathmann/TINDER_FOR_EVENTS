class Event < ApplicationRecord
  mount_uploader :logo, LogoUploader
  mount_uploader :background_image, BackgroundImageUploader
  has_many :participants
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :name, presence: true
  validates :welcome_message, presence: true
  validates :welcome_message, length: { in: 20..180 }
end
