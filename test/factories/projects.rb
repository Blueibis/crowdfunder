FactoryGirl.define do
  factory :project do
    title { Faker::App.name }
    description { Faker::Lorem.paragraph }
    goal { rand(100000) }
    start_date { Time.now.utc - rand(60).days }
    end_date { Time.now.utc + rand(10).days }
    owner { create(:user, first_name: "bobby", last_name: "flay") }
  end
end
