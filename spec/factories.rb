FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    encrypted_password 'password'
    sign_in_count '2'
  end
end
