FactoryBot.define do
    factory :user do
      name { 'Dumisani Ramantso' }
      photo { 'picture.jpg' }
      bio { 'I love my brother' }
      posts_counter { 0 }
    end
  end