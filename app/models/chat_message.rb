class ChatMessage < ApplicationRecord
  belongs_to :chat_room
  belongs_to :user

  broadcasts_to :chat_room 
end
