class Ecm::Seminars::Category < ActiveRecord::Base
  # associations
  has_many :seminars, :class_name => 'Ecm::Seminars::Seminar',
                      :dependent => :destroy,
                      :foreign_key => 'ecm_seminars_category_id'
  
  # attributes
  attr_accessible :depth, 
                  :lft, 
                  :locale, 
                  :long_description, 
                  :name, 
                  :parent_id, 
                  :rgt, 
                  :seminars_count, 
                  :short_description, 
                  :slug
                  
  # awesome nested set
  acts_as_nested_set
  default_scope :order => 'lft ASC'  
  
  # friendly id
  extend FriendlyId
  friendly_id :name, :use => :slugged  
                  
  # validations
  validates :name, :presence => true, :uniqueness => { :scope => [ :parent_id ] }
  validates :locale, :presence => true, :if => :root?
  validates :locale, :inclusion => { :in => I18n.available_locales.map(&:to_s) }, :unless => Proc.new { |cc| cc.locale.blank? }
  validates :locale, :absence => true, :unless => :root?               
end
