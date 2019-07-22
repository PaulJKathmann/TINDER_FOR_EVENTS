class Match < ApplicationRecord
  belongs_to :swipe
  has_many :participants, through: :messages
  has_many :messages

  def event
    swipe.participant_1.event
  end
end
