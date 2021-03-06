class Competition < ApplicationRecord
  belongs_to :user
  belongs_to :event
  belongs_to :distance

  validates :event_id, :distance_id, :race_number, presence: true
  # validates :category_rank, numericality: { less_than_or_equal_to: :rank }
end
