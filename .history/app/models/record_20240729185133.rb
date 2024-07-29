class Record < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true, length: { maximum: 500 }
  validates :published_at, presence: true
end
