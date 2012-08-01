class Ecm::Seminars::Location < ActiveRecord::Base
  # associations
  has_many :events, :class_name => 'Ecm::Seminars::Event',
                    :dependent => :destroy,
                    :foreign_key => 'ecm_seminars_location_id'
  
  # attributes
  attr_accessible :description, 
                  :locale, 
                  :name, 
                  :dates_count, 
                  :slug, 
                  :url
                  
  # friendly id
  extend FriendlyId
  friendly_id :name, :use => :slugged  
  
  # validations
  validates :name, :presence => true, :uniqueness => { :scope => [ :locale ] }
  validates :locale, :presence => true
  validates :locale, :inclusion => { :in => I18n.available_locales.map(&:to_s) }
end
