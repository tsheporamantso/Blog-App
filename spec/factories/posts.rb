FactoryBot.define do
    factory :post do
      title { 'Word of the day' }
      text { 'By the power of signs and wonders, through the power of theSpirit of God.' }
      comments_counter { 0 }
      likes_counter { 0 }
      association :author, factory: :user
    end
  end