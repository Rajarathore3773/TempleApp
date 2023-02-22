# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_19_132123) do
  create_table "bookings", force: :cascade do |t|
    t.datetime "bookingdate"
    t.datetime "checkoutdate"
    t.integer "temple_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["temple_id"], name: "index_bookings_on_temple_id"
  end

  create_table "temples", force: :cascade do |t|
    t.string "t_name"
    t.string "t_lordname"
    t.string "t_location"
    t.string "t_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visitors", force: :cascade do |t|
    t.string "v_name"
    t.integer "v_age"
    t.string "v_email"
    t.string "v_govermentid"
    t.integer "v_contact"
    t.integer "temple_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["temple_id"], name: "index_visitors_on_temple_id"
  end

  add_foreign_key "bookings", "temples"
  add_foreign_key "visitors", "temples"
end
