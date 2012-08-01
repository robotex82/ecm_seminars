FactoryGirl.define do
  factory :ecm_seminars_event, :class => Ecm::Seminars::Event do
    begins_at 1.week.from_now
    ends_at { |event| event.begins_at + 2.hours }
    locale I18n.locale.to_s
  end  
end
