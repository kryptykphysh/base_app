FactoryBot.define do
  factory :chat_message do
    chat_room
    user
    content { "MyText" }
  end
end
