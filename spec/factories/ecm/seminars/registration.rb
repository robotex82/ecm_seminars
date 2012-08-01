FactoryGirl.define do
  factory :ecm_seminars_registration, :class => Ecm::Seminars::Registration do
    birthdate 'October 1st, 1954'.to_date
    country 'USA'            
    city 'Springfield'
    firstname 'Marge'
    lastname 'Simpson'      
    salutation 'Mrs.'
    street '742, Evergreen Terrace'      
    zipcode '49007'   
    
    association :event, :factory => :ecm_seminars_event
  end
end
