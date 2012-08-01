# This migration comes from ecm_seminars_engine (originally 2)
class CreateEcmSeminarsLocations < ActiveRecord::Migration
  def change
    create_table :ecm_seminars_locations do |t|
      t.string :locale
      t.string :name
      t.text :description
      t.string :url

      # associations
      t.integer :events_count, :default => 0, :null => false
      
      # friendly id
      t.string :slug

      t.timestamps
    end
  end
end
