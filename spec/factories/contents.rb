FactoryGirl.define do
  factory :content do |c|
    c.title = "test_title"
    c.content = "test_content"
    c.user_id = 1
  end
end
