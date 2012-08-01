FactoryGirl.define do
  factory :ecm_seminars_seminar, :class => Ecm::Seminars::Seminar do
    name "How to make fire"
    locale 'en'
    description "We will teach you how to make fire."
    association :category, :factory => :ecm_seminars_category
  end
end
