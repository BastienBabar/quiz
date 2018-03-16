FactoryBot.define do
  factory :user do
    email 'email@email.com'
    encrypted_password 'password'
    sign_in_count '2'
  end

  factory :question do
    title 'question'
  end

end
