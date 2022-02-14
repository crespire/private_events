class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :hosted_event, foreign_key: 'id', class_name: 'Event'
  has_many :invitations
  has_many :attended_event, through: :invitations, foreign_key: 'id', class_name: 'Event'
end
