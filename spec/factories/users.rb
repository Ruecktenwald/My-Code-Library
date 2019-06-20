FactoryBot.define do
  sequence(:email) { |n| "#{n}@example.com" }

  factory :user do
   first_name { "Joy" }
   last_name { "Roster" }
   email { generate :email }
   password { "secret" }
   password_confirmation { "secret" }
   confirmed_at { Time.now }
 end

 factory :admin_user, class: "AdminUser" do
    first_name { "Pete" }
    last_name { "Wald" }
    email { generate :email }
    password { "secret" }
    password_confirmation { "secret" }
    confirmed_at { Time.now }
  end
end