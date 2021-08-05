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

ActiveRecord::Schema.define(version: 2021_08_04_043246) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calendar_things", force: :cascade do |t|
    t.datetime "dead_line_timestamp"
    t.bigint "thing_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["thing_id"], name: "index_calendar_things_on_thing_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.bigint "duration_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["duration_id"], name: "index_categories_on_duration_id"
  end

  create_table "category_things", force: :cascade do |t|
    t.bigint "thing_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_category_things_on_category_id"
    t.index ["thing_id"], name: "index_category_things_on_thing_id"
  end

  create_table "context_things", force: :cascade do |t|
    t.bigint "thing_id", null: false
    t.bigint "context_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["context_id"], name: "index_context_things_on_context_id"
    t.index ["thing_id"], name: "index_context_things_on_thing_id"
  end

  create_table "contexts", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "durations", force: :cascade do |t|
    t.string "name"
    t.bigint "milliseconds"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "horizons", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_horizons_on_user_id"
  end

  create_table "kanban_column_things", force: :cascade do |t|
    t.bigint "thing_id", null: false
    t.bigint "kanban_column_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["kanban_column_id"], name: "index_kanban_column_things_on_kanban_column_id"
    t.index ["thing_id"], name: "index_kanban_column_things_on_thing_id"
  end

  create_table "kanban_columns", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "project_things", force: :cascade do |t|
    t.bigint "thing_id"
    t.bigint "project_id", null: false
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_project_things_on_project_id"
    t.index ["thing_id"], name: "index_project_things_on_thing_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "thing_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["thing_id"], name: "index_projects_on_thing_id"
  end

  create_table "recurrences", force: :cascade do |t|
    t.string "name"
    t.bigint "duration_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["duration_id"], name: "index_recurrences_on_duration_id"
  end

  create_table "responsable_informations", force: :cascade do |t|
    t.string "type"
    t.string "value"
    t.string "regex"
    t.bigint "responsable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["responsable_id"], name: "index_responsable_informations_on_responsable_id"
  end

  create_table "responsables", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "thing_horizons", force: :cascade do |t|
    t.bigint "horizon_id", null: false
    t.bigint "thing_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["horizon_id"], name: "index_thing_horizons_on_horizon_id"
    t.index ["thing_id"], name: "index_thing_horizons_on_thing_id"
  end

  create_table "thing_responsibles", force: :cascade do |t|
    t.datetime "return_dead_line_timestamp"
    t.bigint "thing_id", null: false
    t.bigint "responsable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["responsable_id"], name: "index_thing_responsibles_on_responsable_id"
    t.index ["thing_id"], name: "index_thing_responsibles_on_thing_id"
  end

  create_table "thing_tags", force: :cascade do |t|
    t.bigint "thing_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tag_id"], name: "index_thing_tags_on_tag_id"
    t.index ["thing_id"], name: "index_thing_tags_on_thing_id"
  end

  create_table "things", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "energy"
    t.string "priority"
    t.datetime "start_timestamp"
    t.datetime "end_timestamp"
    t.bigint "duration_id", null: false
    t.bigint "recurrence_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["duration_id"], name: "index_things_on_duration_id"
    t.index ["recurrence_id"], name: "index_things_on_recurrence_id"
  end

  create_table "user_things", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "thing_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["thing_id"], name: "index_user_things_on_thing_id"
    t.index ["user_id"], name: "index_user_things_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "full_name"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "calendar_things", "things"
  add_foreign_key "categories", "durations"
  add_foreign_key "category_things", "categories"
  add_foreign_key "category_things", "things"
  add_foreign_key "context_things", "contexts"
  add_foreign_key "context_things", "things"
  add_foreign_key "horizons", "users"
  add_foreign_key "kanban_column_things", "kanban_columns"
  add_foreign_key "kanban_column_things", "things"
  add_foreign_key "project_things", "projects"
  add_foreign_key "projects", "things"
  add_foreign_key "recurrences", "durations"
  add_foreign_key "responsable_informations", "responsables"
  add_foreign_key "thing_horizons", "horizons"
  add_foreign_key "thing_horizons", "things"
  add_foreign_key "thing_responsibles", "responsables"
  add_foreign_key "thing_responsibles", "things"
  add_foreign_key "thing_tags", "tags"
  add_foreign_key "thing_tags", "things"
  add_foreign_key "things", "durations"
  add_foreign_key "things", "recurrences"
  add_foreign_key "user_things", "things"
  add_foreign_key "user_things", "users"
end
