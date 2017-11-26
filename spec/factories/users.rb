FactoryBot.define do

  factory :user do
    transient do
      upcase true
    end
    name Faker::Name.name
    email { Faker::Internet.email(name) }

    after(:build) do |user, evaluator|
      user.email.upcase! if evaluator.upcase
    end
  end
end
