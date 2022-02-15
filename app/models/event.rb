class Event < ApplicationRecord
  validates :name, presence: true
  validates :event_date, presence: true

  scope :published, -> { where(published: true) }
  scope :planned, -> { where(published: false) }
  scope :can_join, -> { where(open_join: true) }
  scope :no_join, -> { where(open_join: false) }
  scope :past, -> { where('event_date < ?', Date.today) }
  scope :to_come, -> { where('event_date > ?', Date.today) }

  has_one :creator, foreign_key: 'creator_id', class_name: 'User'
  has_many :invitations
  has_many :attendees, through: :invitations
end
