FactoryBot.define do
    factory :comment do
      text { 'Hope you having a wonderful day!' }
      association :user, factory: :user
      association :post, factory: :post
    end
  end