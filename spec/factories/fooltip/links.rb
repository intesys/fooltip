FactoryGirl.define do
  factory :link, class: 'Fooltip::Link' do
    container
    popup
    x 1
    y 1
    placement 1
    trigger 1
  end
end
