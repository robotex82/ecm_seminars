class Ecm::Seminars::Registration < ActiveRecord::Base
  # associations
  belongs_to :event, :class_name => 'Ecm::Seminars::Event', 
                            :counter_cache => true,
                            :foreign_key => 'ecm_seminars_event_id'
                            
  has_many :participants, :class_name => 'Ecm::Seminars::Participant',
                          :dependent => :destroy,
                          :foreign_key => 'ecm_seminars_registration_id'                            
                            
  # attributes                            
  attr_accessible :birthdate,
                  :city, 
                  :company, 
                  :country, 
                  :coupon_code, 
                  :email, 
                  :firstname, 
                  :lastname, 
                  :mobile, 
                  :participants_count, 
                  :phone, 
                  :position, 
                  :reference_token, 
                  :registrant_confirmed_at, 
                  :registration_confirmed_at, 
                  :salutation, 
                  :street, 
                  :telefax, 
                  :zipcode
                  
  # validations
  validates :birthdate, :presence => true
  validates :country, :presence => true            
  validates :city, :presence => true
  validates :firstname, :presence => true
  validates :lastname, :presence => true      
  validates :salutation, :presence => true
  validates :street, :presence => true      
  validates :zipcode, :presence => true                    
end
