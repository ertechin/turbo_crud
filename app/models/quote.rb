class Quote < ApplicationRecord
  validates :text, presence: true

  scope :ordered, -> { order(created_at: :desc) }
end