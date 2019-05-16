FactoryBot.define do
  factory :post do
    category { "Rails" }
    description { "How to install rspec" }
    code { "rails g rspec:install" }
    user {true}
  end

  factory :second_post, class: Post do
    category { "Javascript" }
    description { "How to call a function" }
    code { "()" }
    user {true}
    id { 5 }
  end

  factory :third_post, class: Post do
    category { "Javascript" }
    description { "How to call a function" }
    code { "()" }
    admin_user {true}
  end

end