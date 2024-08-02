class Record < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true, length: { maximum: 500 }
  validates :published_at, presence: true
  # faker
  require "faker"
  100.times do
    Record.create!(title: Faker::Book.title, author: Faker::Book.author, published_at: Faker::Date.between(from: "2014-09-23", to: Date.today))
  end
end
