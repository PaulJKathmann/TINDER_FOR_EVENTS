class Match < ApplicationRecord
  belongs_to :swipe
  has_many :participants, through: :messages
  has_many :messages
end
