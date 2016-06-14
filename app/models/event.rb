class Event < ActiveRecord::Base
  belongs_to :user  # Host

  validates :event_name, presence: true
  validates :description, presence: true
  # validates :user_id, presence: true

  has_many :community_events, dependent: :delete_all
  has_many :communities, through: :community_events
end
