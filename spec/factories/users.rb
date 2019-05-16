FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end
  
  factory :user do
    first_name "Joy"
    last_name "Roster"
    email { generate :email }
    password "secret"
    password_confirmation "secret"
  end

  factory :admin_user, class: "AdminUser" do
    first_name "Pete"
    last_name "Wald"
    email { generate :email }
    password "secret"
    password_confirmation "secret"
  end

end