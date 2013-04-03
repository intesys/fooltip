FactoryGirl.define do
  factory :popup, class: 'Fooltip::Popup' do
    identifier "MyString"
    title "MyString"
    content "MyText"
  end
end
