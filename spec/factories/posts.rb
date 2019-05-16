FactoryGirl.define do
  
  factory :post do
    category "Rails"  
    description "How to install rspec"
    code "rails g rspec:install"
    user
  end

  factory :second_post, class: "Post" do
    category "Javascript"  
    description "How to call a function"
    code "()"
    admin_user
  end

end