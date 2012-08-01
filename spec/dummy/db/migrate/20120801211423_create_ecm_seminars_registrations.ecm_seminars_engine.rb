# This migration comes from ecm_seminars_engine (originally 5)
class CreateEcmSeminarsRegistrations < ActiveRecord::Migration
  def change
    create_table :ecm_seminars_registrations do |t|
      # personal data
      t.string :salutation
      t.string :firstname
      t.string :lastname
      t.date :birthdate

      # company data
      t.string :company
      t.string :position
            
      # address data
      t.string :street
      t.string :city
      t.string :zipcode
      t.string :country
      
      # contact data
      t.string :email
      t.string :mobile
      t.string :phone
      t.string :telefax      
      
      # additional data
      t.string :coupon_code
      t.string :reference_token
      
      # workflow data
      t.timestamp :registrant_confirmed_at
      t.timestamp :registration_confirmed_at

      # associations
      t.integer :participants_count, :default => 0, :null => false
      t.references :ecm_seminars_event

      t.timestamps
    end
    add_index :ecm_seminars_registrations, :ecm_seminars_event_id
  end
end
