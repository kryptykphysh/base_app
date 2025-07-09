FactoryBot.define do
  factory :user do
    email_address { Faker::Internet.unique.email }
    password { "Password01!" }
    password_confirmation { "Password01!" }
  end
end
