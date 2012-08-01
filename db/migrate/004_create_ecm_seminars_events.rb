class CreateEcmSeminarsEvents < ActiveRecord::Migration
  def change
    create_table :ecm_seminars_events do |t|
      t.string :locale
      t.timestamp :begins_at
      t.timestamp :ends_at
      t.text :description
      t.integer :capacity
      t.timestamp :close_registrations_at
      
      # associations
      t.integer :registrations_count, :default => 0, :null => false
      t.references :ecm_seminars_location
      t.references :ecm_seminars_seminar
      
      # friendly id
      t.string :slug

      t.timestamps
    end
  end
end
