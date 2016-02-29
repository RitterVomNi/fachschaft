FactoryGirl.define do
  factory :user do
    email "a@fh-muenster.de"
    firstName "firstname_test"
    lastName "lastname_test"
    password "12345678"
    password_confirmation "12345678"
    facebook "www.facebook.com/testlink"
    studiengang "BWL"
    confirmed_at Date.today
  end


end
