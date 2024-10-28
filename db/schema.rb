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

ActiveRecord::Schema[7.1].define(version: 2024_10_24_210250) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exchange_rates", force: :cascade do |t|
    t.decimal "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "exchange_rate_id", null: false
    t.string "coin_to_send"
    t.string "coin_to_get"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exchange_rate_id"], name: "index_transactions_on_exchange_rate_id"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "usd_balance_in_cents"
    t.integer "btc_balance_in_sats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "transactions", "exchange_rates"
  add_foreign_key "transactions", "users"
end
