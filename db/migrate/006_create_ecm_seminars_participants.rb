class CreateEcmSeminarsParticipants < ActiveRecord::Migration
  def change
    create_table :ecm_seminars_participants do |t|
      # personal data
      t.string :salutation
      t.string :firstname
      t.string :lastname
      t.date :birthdate
      
      # contact data
      t.string :email
      t.string :mobile
      t.string :phone
      
      # associations
      t.references :ecm_seminars_registration

      t.timestamps
    end
    add_index :ecm_seminars_participants, :ecm_seminars_registration_id
  end
end
