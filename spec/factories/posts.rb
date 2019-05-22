FactoryGirl.define do
  
  factory :post do
    category_id 1 
    description "How to install rspec"
    code "rails g rspec:install"
    user
  end

  factory :second_post, class: "Post" do
    category_id 1  
    description "How to call a function"
    code "()"
    user
    id 300
  end

  factory :third_post, class: "Post" do
    category_id 1
    description "How to call a function"
    code "()"
    admin_user
  end

end