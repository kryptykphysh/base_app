FactoryBot.define do
  factory :chat_room do
    title { Faker::Superhero.unique.name }
    description { "This has to be at least ten characters" }
  end
end
