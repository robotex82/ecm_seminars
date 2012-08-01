class Ecm::Seminars::Event < ActiveRecord::Base
  # associations
  belongs_to :location, :counter_cache => true,
                        :foreign_key => 'ecm_seminars_location_id'  
                        
  belongs_to :seminar, :counter_cache => true,
                       :foreign_key => 'ecm_seminars_seminar_id'
                       
  has_many :regisrations, :class_name => 'Ecm::Seminars::Registration',
                          :dependent => :destroy,
                          :foreign_key => 'ecm_seminars_event_id'
  
  # attributes
  attr_accessible :begins_at, 
                  :capacity, 
                  :close_registrations_at, 
                  :description, 
                  :ends_at, 
                  :locale,
                  :slug
                  
  # validations
  validates :begins_at, :presence => true
  validates :ends_at, :presence => true
  validates :locale, :presence => true
  validates :locale, :inclusion => { :in => I18n.available_locales.map(&:to_s) }  
end
