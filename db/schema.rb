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
    t.string "string"
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
    t.datetime "dob"
    t.string "email"
    t.string "street"
    t.string "city"
    t.string "postalcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer "branchId"
    t.string "firstName"
    t.string "lastName"
    t.integer "ssn"
    t.date "dateOfBirth"
    t.string "sex"
    t.decimal "salary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "branch_id", null: false
    t.index ["branch_id"], name: "index_employees_on_branch_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.date "dateTo"
    t.date "dateFrom"
    t.integer "customerId"
    t.integer "range"
    t.integer "totalCost"
    t.integer "employeeAuthId"
    t.integer "branchId"
    t.string "vehicleLicensePlate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "employee_id", null: false
    t.bigint "customer_id", null: false
    t.bigint "branch_id", null: false
    t.bigint "vehicle_id", null: false
    t.index ["branch_id"], name: "index_reservations_on_branch_id"
    t.index ["customer_id"], name: "index_reservations_on_customer_id"
    t.index ["employee_id"], name: "index_reservations_on_employee_id"
    t.index ["vehicle_id"], name: "index_reservations_on_vehicle_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "licensePlate"
    t.string "brand"
    t.string "modelNo"
    t.string "type"
    t.string "trim"
    t.integer "colorId"
    t.integer "capacity"
    t.integer "milage"
    t.decimal "packagePrice"
    t.integer "branchId"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "branch_id", null: false
    t.bigint "color_id", null: false
    t.index ["branch_id"], name: "index_vehicles_on_branch_id"
    t.index ["color_id"], name: "index_vehicles_on_color_id"
  end

  add_foreign_key "employees", "branches"
  add_foreign_key "reservations", "branches"
  add_foreign_key "reservations", "customers"
  add_foreign_key "reservations", "employees"
  add_foreign_key "reservations", "vehicles"
  add_foreign_key "vehicles", "branches"
  add_foreign_key "vehicles", "colors"
end
