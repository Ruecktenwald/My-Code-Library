FactoryGirl.define do
  
  factory :post do
    category "Rails"  
    description "How to install rspec"
    code "rails g rspec:install"
    user_id 1
  end

  factory :second_post, class: "Post" do
    category "Javascript"  
    description "How to call a function"
    code "()"
    user_id 2
  end

end