FactoryGirl.define do
  factory :user do
    sequence(:email)     { |n| "someone-#{n}@ezeratech.com" }
    password  { 'heyitsme123' }
  end

end
