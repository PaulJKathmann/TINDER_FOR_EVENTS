class Message < ApplicationRecord
  belongs_to :author, class_name: "Participant"
  belongs_to :match
end
