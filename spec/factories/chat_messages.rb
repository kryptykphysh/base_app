FactoryBot.define do
  factory :chat_message do
    chat_room { nil }
    user { nil }
    content { "MyText" }
  end
end
