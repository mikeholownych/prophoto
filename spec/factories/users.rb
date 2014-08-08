FactoryGirl.define do
  factory :user do
    name 'Mike'
    sequence(:email) { |n| "email#{n}@gmail.com" }
    password 'pw'
  end
end
