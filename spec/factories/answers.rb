# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    body "MyText"
    user nil
    question nil
  end
end
