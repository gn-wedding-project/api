# frozen_string_literal: true

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

ActiveRecord::Schema[7.1].define(version: 0) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'users', id: :serial, force: :cascade do |t|
    t.string 'first_name', limit: 255, null: false
    t.string 'last_name', limit: 255, null: false
    t.string 'rg', limit: 20
    t.string 'number_tel', limit: 20, null: false
    t.string 'password', limit: 255, null: false
    t.boolean 'is_confirmed', null: false
    t.boolean 'is_special', null: false
    t.boolean 'is_invited', null: false
    t.datetime 'created_at', precision: nil, default: -> { 'CURRENT_TIMESTAMP' }
    t.datetime 'updated_at', precision: nil, default: -> { 'CURRENT_TIMESTAMP' }

    t.unique_constraint ['number_tel'], name: 'users_number_tel_key'
  end
end
