FactoryGirl.define do
  factory :ecm_seminars_location, :class => Ecm::Seminars::Location do
    name "Moe's Tavern"
    locale I18n.default_locale.to_s
  end
end
