# This migration comes from ecm_seminars_engine (originally 3)
class CreateEcmSeminarsSeminars < ActiveRecord::Migration
  def change
    create_table :ecm_seminars_seminars do |t|
      t.string :locale
      t.string :name
      t.text :description
      t.integer :price_cents
      t.string :price_currency
      t.string :coupon_code
      
      # acts as list
      t.integer :position
      
      # associations
      t.integer :events_count, :default => 0, :null => false
      t.references :ecm_seminars_category
      
      # friendly id
      t.string :slug      

      t.timestamps
    end
  end
end
