# This migration comes from ecm_seminars_engine (originally 1)
class CreateEcmSeminarsCategories < ActiveRecord::Migration
  def change
    create_table :ecm_seminars_categories do |t|
      t.string :locale
      t.string :name
      t.text :short_description
      t.text :long_description
      
      # associations
      t.integer :seminars_count
      
      # awesome nested set
      t.integer :lft
      t.integer :rgt
      t.integer :parent_id
      t.integer :depth
      
      # friendly id
      t.string :slug
      
      # paperclip
      # t.attachment :preview_image
      t.string :preview_image_file_name
      t.integer :preview_image_file_size
      t.string :preview_image_content_type
      t.timestamp :preview_image_updated_at
      t.string :preview_image_fingerprint
      
      # paperclip
      # t.attachment :main_image
      t.string :main_image_file_name
      t.integer :main_image_file_size
      t.string :main_image_content_type
      t.timestamp :main_image_updated_at
      t.string :main_image_fingerprint        

      t.timestamps
    end
  end
end
