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

ActiveRecord::Schema[7.0].define(version: 2022_11_25_204939) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consultants", force: :cascade do |t|
    t.string "code"
    t.string "fullName"
    t.string "email"
    t.string "phoneNumber"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "code"
    t.string "fullName"
    t.string "email"
    t.string "phoneNumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id"
    t.index ["customer_id"], name: "index_contacts_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "code"
    t.string "email"
    t.string "fullName"
    t.string "phoneNumber"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goods", force: :cascade do |t|
    t.string "materialNumber"
    t.string "category"
    t.string "name"
    t.string "description"
    t.string "profitCenter"
    t.decimal "newPrice", precision: 16, scale: 6
    t.decimal "newCost", precision: 16, scale: 6
    t.string "currency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["materialNumber"], name: "index_goods_on_materialNumber"
  end

  create_table "quotation_details", force: :cascade do |t|
    t.bigint "quotation_id"
    t.bigint "good_id"
    t.integer "quantity"
    t.string "leadTime"
    t.string "sellingUnit"
    t.decimal "price", precision: 16, scale: 6
    t.decimal "discount", precision: 16, scale: 6
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["good_id"], name: "index_quotation_details_on_good_id"
    t.index ["quotation_id"], name: "index_quotation_details_on_quotation_id"
  end

  create_table "quotations", force: :cascade do |t|
    t.string "code"
    t.date "quotationDate"
    t.string "deliveryTerm"
    t.string "minimumOrder"
    t.string "leadTime"
    t.bigint "customer_id"
    t.bigint "consultant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "expirationDays"
    t.integer "creditDays"
    t.bigint "contact_id"
    t.index ["consultant_id"], name: "index_quotations_on_consultant_id"
    t.index ["contact_id"], name: "index_quotations_on_contact_id"
    t.index ["customer_id"], name: "index_quotations_on_customer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "contacts", "customers"
  add_foreign_key "quotation_details", "goods"
  add_foreign_key "quotation_details", "quotations"
  add_foreign_key "quotations", "consultants"
  add_foreign_key "quotations", "contacts"
  add_foreign_key "quotations", "customers"
end
