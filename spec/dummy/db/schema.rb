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

ActiveRecord::Schema.define(:version => 20130402091259) do

  create_table "fooltip_associations", :force => true do |t|
    t.string   "owner_type"
    t.integer  "owner_id"
    t.integer  "container_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "fooltip_container_translations", :force => true do |t|
    t.integer  "fooltip_container_id"
    t.string   "locale"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "fooltip_container_translations", ["fooltip_container_id"], :name => "index_fooltip_container_translations_on_fooltip_container_id"
  add_index "fooltip_container_translations", ["locale"], :name => "index_fooltip_container_translations_on_locale"

  create_table "fooltip_containers", :force => true do |t|
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fooltip_links", :force => true do |t|
    t.integer  "container_id"
    t.integer  "popup_id"
    t.integer  "placement"
    t.integer  "trigger"
    t.integer  "x"
    t.integer  "y"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "fooltip_links", ["container_id"], :name => "index_fooltip_links_on_container_id"
  add_index "fooltip_links", ["popup_id"], :name => "index_fooltip_links_on_popup_id"

  create_table "fooltip_popup_translations", :force => true do |t|
    t.integer  "fooltip_popup_id"
    t.string   "locale"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "fooltip_popup_translations", ["fooltip_popup_id"], :name => "index_fooltip_popup_translations_on_fooltip_popup_id"
  add_index "fooltip_popup_translations", ["locale"], :name => "index_fooltip_popup_translations_on_locale"

  create_table "fooltip_popups", :force => true do |t|
    t.string   "identifier"
    t.integer  "min_height"
    t.integer  "min_width"
    t.integer  "max_height"
    t.integer  "max_width"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
