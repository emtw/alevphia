# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130905135628) do

  create_table "events", :force => true do |t|
    t.integer  "timeline_id"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "headline"
    t.text     "text"
    t.text     "media"
    t.text     "thumbnail"
    t.text     "credit"
    t.text     "caption"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "funerals", :force => true do |t|
    t.string   "funeral_pref"
    t.string   "casket_pref"
    t.string   "other_pref"
    t.string   "service_location"
    t.string   "burial_location"
    t.string   "ashes_location"
    t.text     "songs_pref"
    t.text     "readings"
    t.text     "speakers"
    t.text     "final_words"
    t.string   "dress_code"
    t.string   "flowers"
    t.string   "donations_to"
    t.text     "wake"
    t.text     "epitaph"
    t.text     "additional_reqs"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "galleries", :force => true do |t|
    t.integer  "user_id"
    t.integer  "photo_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "guests", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.string   "username"
    t.boolean  "guest",                  :default => true
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.string   "encrypted_password",     :default => "",   :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "guests", ["reset_password_token"], :name => "index_guests_on_reset_password_token", :unique => true
  add_index "guests", ["username"], :name => "index_guests_on_username", :unique => true

  create_table "keyholders", :force => true do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "user_id"
    t.string   "house"
    t.string   "postcode"
    t.boolean  "keyholder",              :default => true
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.string   "email",                  :default => "",   :null => false
    t.string   "encrypted_password",     :default => "",   :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "keyholders", ["reset_password_token"], :name => "index_keyholders_on_reset_password_token", :unique => true
  add_index "keyholders", ["username"], :name => "index_keyholders_on_username", :unique => true

  create_table "message_boards", :force => true do |t|
    t.integer  "user_id"
    t.integer  "message_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "messages", :force => true do |t|
    t.integer  "message_board_id"
    t.string   "name"
    t.text     "content"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "photos", :force => true do |t|
    t.integer  "gallery_id"
    t.string   "title"
    t.string   "description"
    t.string   "uploaded_by"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "timelines", :force => true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_names"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "line_1"
    t.string   "line_2"
    t.string   "line_3"
    t.string   "town"
    t.string   "county"
    t.string   "postcode"
    t.string   "contact_number"
    t.boolean  "user",                   :default => true
    t.string   "username"
    t.integer  "keyholder_id"
    t.integer  "guest_id"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.string   "email",                  :default => "",   :null => false
    t.string   "encrypted_password",     :default => "",   :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
