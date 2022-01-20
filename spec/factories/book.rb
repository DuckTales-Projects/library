# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    author { Faker::Book.author }
    publisher { Faker::Book.publisher }
    genre { Faker::Book.genre }
    language { Faker::Nation.language }
    edition { Faker::Name.name }
    year { Faker::Stripe.year }
    place { Faker::Address.country }
  end
end
