class Ecm::Seminars::Seminar < ActiveRecord::Base
  # associations
  belongs_to :category, :class_name => 'Ecm::Seminars::Category', 
                        :counter_cache => true,
                        :foreign_key => 'ecm_seminars_category_id'
                        
  has_many :events, :class_name => 'Ecm::Seminars::Event',
                    :dependent => :destroy,
                    :foreign_key => 'ecm_seminars_location_id'
  
  # attributes
  attr_accessible :coupon_code,
                  :description, 
                  :name, 
                  :position,
                  :price_cents,
                  :price_currency,                 
                  :dates_count, 
                  :slug
                  
                  
  # acts as list
  acts_as_list :scope => :ecm_seminars_category
  default_scope :order => 'ecm_seminars_category_id ASC, position ASC'

  # friendly id
  extend FriendlyId
  friendly_id :name, :use => :slugged  
  
  # validations
  validates :category, :presence => true
  validates :name, :presence => true, :uniqueness => { :scope => [ :locale ] }
  validates :locale, :presence => true
  validates :locale, :inclusion => { :in => I18n.available_locales.map(&:to_s) }
end
