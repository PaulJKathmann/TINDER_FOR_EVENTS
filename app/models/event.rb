class Event < ApplicationRecord
  has_many :participants
  belongs_to :user

end
