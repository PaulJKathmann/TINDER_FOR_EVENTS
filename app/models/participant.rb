class Participant < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :messages
  has_many :matches, through: :messages
end
