class Quote < ApplicationRecord
  validates :text, presence: true

  scope :created_desc, -> { order(created_at: :desc) }
end