# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120801181929) do

  create_table "ecm_seminars_categories", :force => true do |t|
    t.string   "locale"
    t.string   "name"
    t.text     "short_description"
    t.text     "long_description"
    t.integer  "seminars_count"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "parent_id"
    t.integer  "depth"
    t.string   "slug"
    t.string   "preview_image_file_name"
    t.integer  "preview_image_file_size"
    t.string   "preview_image_content_type"
    t.datetime "preview_image_updated_at"
    t.string   "preview_image_fingerprint"
    t.string   "main_image_file_name"
    t.integer  "main_image_file_size"
    t.string   "main_image_content_type"
    t.datetime "main_image_updated_at"
    t.string   "main_image_fingerprint"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "ecm_seminars_events", :force => true do |t|
    t.string   "locale"
    t.datetime "begins_at"
    t.datetime "ends_at"
    t.text     "description"
    t.integer  "capacity"
    t.datetime "close_registrations_at"
    t.integer  "registrations_count",      :default => 0, :null => false
    t.integer  "ecm_seminars_location_id"
    t.integer  "ecm_seminars_seminar_id"
    t.string   "slug"
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
  end

  create_table "ecm_seminars_locations", :force => true do |t|
    t.string   "locale"
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.integer  "events_count", :default => 0, :null => false
    t.string   "slug"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "ecm_seminars_participants", :force => true do |t|
    t.string   "salutation"
    t.string   "firstname"
    t.string   "lastname"
    t.date     "birthdate"
    t.string   "email"
    t.string   "mobile"
    t.string   "phone"
    t.integer  "ecm_seminars_registration_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "ecm_seminars_participants", ["ecm_seminars_registration_id"], :name => "index_ecm_seminars_participants_on_ecm_seminars_registration_id"

  create_table "ecm_seminars_registrations", :force => true do |t|
    t.string   "salutation"
    t.string   "firstname"
    t.string   "lastname"
    t.date     "birthdate"
    t.string   "company"
    t.string   "position"
    t.string   "street"
    t.string   "city"
    t.string   "zipcode"
    t.string   "country"
    t.string   "email"
    t.string   "mobile"
    t.string   "phone"
    t.string   "telefax"
    t.string   "coupon_code"
    t.string   "reference_token"
    t.datetime "registrant_confirmed_at"
    t.datetime "registration_confirmed_at"
    t.integer  "participants_count",        :default => 0, :null => false
    t.integer  "ecm_seminars_event_id"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  add_index "ecm_seminars_registrations", ["ecm_seminars_event_id"], :name => "index_ecm_seminars_registrations_on_ecm_seminars_event_id"

  create_table "ecm_seminars_seminars", :force => true do |t|
    t.string   "locale"
    t.string   "name"
    t.text     "description"
    t.integer  "price_cents"
    t.string   "price_currency"
    t.string   "coupon_code"
    t.integer  "position"
    t.integer  "events_count",             :default => 0, :null => false
    t.integer  "ecm_seminars_category_id"
    t.string   "slug"
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
  end

end
