class ChatRoom < ApplicationRecord
  validates :title, presence: true, length: { in: 3..50 }, uniqueness: true
  validates :description, presence: true, length: { in: 10..500 }

  has_many :chat_messages, dependent: :destroy

  normalizes :title, with: -> (title) { title.strip.gsub(/\s+/, " ").downcase }

  broadcasts_refreshes_to ->(chat_room) { chat_room.class.broadcast_target_default }
end
