class ChatRoom < ApplicationRecord
  validates :title, presence: true, length: { in: 3..50 }, uniqueness: true
  validates :description, presence: true, length: { in: 10..500 }

  normalizes :title, with: -> (title) { title.strip.gsub(/\s+/, " ").downcase }
end
