FactoryGirl.define do
  factory :reward do
    description "Gratitude!"
    dollar_amount { rand(100) }
  end
end
