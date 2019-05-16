FactoryGirl.define do
  
  factory :user do
    first_name "Joy"
    last_name "Wald"
    email "joy@test.com"
    password "secret"
    password_confirmation "secret"
  end

  factory :admin_user, class: "AdminUser" do
    first_name "Pete"
    last_name "Wald"
    email "admin@test.com"
    password "secret"
    password_confirmation "secret"
  end

end