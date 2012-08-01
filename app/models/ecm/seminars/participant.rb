class Ecm::Seminars::Participant < ActiveRecord::Base
  # associations
  belongs_to :registration, :class_name => 'Ecm::Seminars::Registration', 
                            :counter_cache => true,
                            :foreign_key => 'ecm_seminars_registration_id'
  
  # attributes
  attr_accessible :birthdate, 
                  :firstname, 
                  :lastname, 
                  :salutation
                  
  # validations
  validates :birthdate, :presence => true
  validates :firstname, :presence => true  
  validates :lastname, :presence => true  
  validates :salutation, :presence => true
end
