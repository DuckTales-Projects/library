# frozen_string_literal: true

FactoryBot.define do
  factory :publisher do
    name { Faker::Name.name }
  end
end
