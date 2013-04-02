FactoryGirl.define do
  factory :link, class: 'Fooltip::Link' do
    container
    popup
    x 1
    y 1
    popup_direction 1
  end
end
