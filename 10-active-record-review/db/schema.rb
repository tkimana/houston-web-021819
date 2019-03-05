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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_03_04_224656) do

  create_table "appointments", force: :cascade do |t|
    t.integer "dog_id"
    t.integer "groomer_id"
    t.index ["dog_id"], name: "index_appointments_on_dog_id"
    t.index ["groomer_id"], name: "index_appointments_on_groomer_id"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.integer "age"
    t.integer "owner_id"
    t.index ["owner_id"], name: "index_dogs_on_owner_id"
  end

  create_table "groomers", force: :cascade do |t|
    t.string "name"
    t.string "address"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
  end

end