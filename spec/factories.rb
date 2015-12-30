FactoryGirl.define do
  factory :user do
    email 'email@email.com'
    encrypted_password 'password'
    sign_in_count '2'
  end

  factory :answer do
    title 'answer'
    description 'this is my answer'
    # trait :good do
      good true
      point 2
    # end
    # trait :bad do
    #   good false
    #   point -1
    # end

  end

  # factory :answers do
  #   FactoryGirl.create_list(:answer, 2)
  # end

  factory :question do
    title 'question'
    # answers :answers
  end

end
