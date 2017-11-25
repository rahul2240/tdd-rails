FactoryBot.define do

  factory :user do
    name 'Rahul'
    sequence(:email, 10) { |n| "user#{n}@gmail.com" }

  end
end
