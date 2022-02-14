class Event < ApplicationRecord
  validates :name, presence: true
  validates :event_date, presence: true

  has_one :creator, foreign_key: 'creator_id', class_name: 'User'
  has_many :attendees, foreign_key: 'attendee_id', class_name: 'User'
end
