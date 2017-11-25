FactoryBot.define do

  factory :user do
    transient do
      upcase true
    end
    name 'Rahul'
    sequence(:email, 10) { |n| "user#{n}@gmail.com" }

    after(:build) do |user, evaluator|
      user.email.upcase! if evaluator.upcase
    end
  end
end
