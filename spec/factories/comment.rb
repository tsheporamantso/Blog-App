FactoryBot.define do
  factory :comment do
    text { "Hope you're having a wonderful day!" }
    association :author, factory: :user
    association :post, factory: :post
  end
end
