# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	password "3wzzzgax"
  	password_confirmation "3wzzzgax"
  	sequence(:email) { |n| "synthresin#{n}@me.com"} 
  end
end
