# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_09_232714) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "branches", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "postalCode"
    t.integer "phoneNo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.integer "phoneNumber"
    t.integer "driversLicense"
    t.date "dateOfBirth"
    t.string "email"
    t.string "street"
    t.string "city"
    t.string "postalCode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.integer "ssn"
    t.date "dateOfBirth"
    t.string "sex"
    t.decimal "salary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "branch_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.date "dateTo"
    t.date "dateFrom"
    t.integer "range"
    t.integer "totalCost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "employee_id"
    t.integer "customer_id"
    t.integer "branch_id"
    t.integer "vehicle_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "licensePlate"
    t.string "brand"
    t.string "modelNo"
    t.string "v_type"
    t.string "trim"
    t.integer "capacity"
    t.integer "milage"
    t.decimal "packagePrice"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "branch_id"
    t.integer "color_id"
  end

end
