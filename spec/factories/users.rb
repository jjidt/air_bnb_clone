# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "john#{(Random.rand * 1000).floor}@example.com"
    password "testtest"
    password_confirmation "testtest"
  end
end
