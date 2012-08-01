FactoryGirl.define do
  factory :ecm_seminars_category, :class => Ecm::Seminars::Category do
    name "Making fire"
    locale I18n.default_locale.to_s
      
    factory :ecm_seminars_category_with_parent do
      locale nil
      association :parent, :factory => :ecm_seminars_category
    end
  end
end
