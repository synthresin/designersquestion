require 'faker'

FactoryGirl.define do
  factory :user do
  	password "3wzzzgax"
  	password_confirmation "3wzzzgax"
  	#sequence(:email) { |n| "synthresin#{n}@me.com"} 
  	email { Faker::Internet.email }

  	association :profile
  end
end
