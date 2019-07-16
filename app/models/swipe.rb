class Swipe < ApplicationRecord
  belongs_to :participant_1, class_name: "Participant"
  belongs_to :participant_2, class_name: "Participant"
  has_one :match
end
