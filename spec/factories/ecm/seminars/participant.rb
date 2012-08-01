FactoryGirl.define do
  factory :ecm_seminars_participant, :class => Ecm::Seminars::Participant do
    birthdate 'May 12, 1955'.to_date
    firstname 'Homer'
    lastname 'Simpson'
    salutation 'Mr.'
    association :registration, :factory => :ecm_seminars_registration
  end
end
