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

ActiveRecord::Schema.define(version: 20180820082504) do

  create_table "dietary_restrictions", force: :cascade do |t|
    t.integer  "preloaded_meal_id"
    t.string   "food_texture"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["preloaded_meal_id"], name: "index_dietary_restrictions_on_preloaded_meal_id"
  end

  create_table "ingredient_preloaded_meals", force: :cascade do |t|
    t.integer  "ingredient_id"
    t.integer  "preloaded_meal_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "quantity"
    t.index ["ingredient_id"], name: "index_ingredient_preloaded_meals_on_ingredient_id"
    t.index ["preloaded_meal_id"], name: "index_ingredient_preloaded_meals_on_preloaded_meal_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "title"
    t.string   "price"
    t.string   "unit_measure"
    t.string   "unit_quantity"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "meal_categories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meal_options", force: :cascade do |t|
    t.string   "title"
    t.integer  "meal_category_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "color"
    t.index ["meal_category_id"], name: "index_meal_options_on_meal_category_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string   "title"
    t.integer  "meal_option_id"
    t.text     "notes"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.date     "available_date"
    t.integer  "preloaded_meal_id"
    t.string   "relationship_code"
    t.date     "the_date"
    t.index ["meal_option_id"], name: "index_meals_on_meal_option_id"
    t.index ["preloaded_meal_id"], name: "index_meals_on_preloaded_meal_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "ward_id"
    t.integer  "site_id"
    t.date     "delivery_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["patient_id"], name: "index_orders_on_patient_id"
    t.index ["site_id"], name: "index_orders_on_site_id"
    t.index ["ward_id"], name: "index_orders_on_ward_id"
  end

  create_table "patient_meals", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "meal_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.date     "delivery_date"
    t.integer  "meal_option_id"
    t.string   "diet_texture"
    t.string   "fluid_consistency"
    t.integer  "order_id"
    t.integer  "meal_category_id"
    t.index ["meal_category_id"], name: "index_patient_meals_on_meal_category_id"
    t.index ["meal_id"], name: "index_patient_meals_on_meal_id"
    t.index ["meal_option_id"], name: "index_patient_meals_on_meal_option_id"
    t.index ["order_id"], name: "index_patient_meals_on_order_id"
    t.index ["patient_id"], name: "index_patient_meals_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "room_number"
    t.text     "allergies"
    t.text     "diet_type"
    t.text     "diet_texture"
    t.text     "fluid_consistency"
    t.text     "fluid_restriction"
    t.text     "likes"
    t.text     "dislikes"
    t.text     "extra_information"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "ward_id"
    t.string   "avatar"
    t.index ["ward_id"], name: "index_patients_on_ward_id"
  end

  create_table "preloaded_meals", force: :cascade do |t|
    t.string   "title"
    t.text     "ingredients"
    t.text     "nutritional_info"
    t.text     "notes"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.text     "method"
    t.decimal  "total_price"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sites_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "family_member"
    t.string   "boolean"
    t.integer  "patient_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["patient_id"], name: "index_users_on_patient_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  create_table "wards", force: :cascade do |t|
    t.string   "name"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_wards_on_site_id"
  end

end
