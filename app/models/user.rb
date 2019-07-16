class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :pictures
  has_many :participants
  # For participant:
  has_many :events, through: :participants
  # For organizer:
  has_many :projects, foreign_key: "user_id", class_name: "Event"
end
