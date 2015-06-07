FactoryGirl.define do
  factory :user do
  	email "email@gmail.com"
  	password "password"
    password_confirmation "password"
  end 
  factory :place do
    name "Lulu's Bakery"
    address "123 Penny Lane"
    description "Try the cupcakes"
    latitude(42.3631519)
    longitude(-71.056098)
    association :user
  end
  factory :comment do
  	message "I love this place!"
    rating "1_star"
    association :user
    association :place
  end
end
