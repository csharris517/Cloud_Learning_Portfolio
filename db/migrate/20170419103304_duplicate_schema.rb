class DuplicateSchema < ActiveRecord::Migration
  def change
    create_table "assignments", force: :cascade do |t|
      t.string   "name",              null: false
      t.integer  "course_week_id",    null: false
      t.string   "assignment_source", null: false
      t.string   "assignment_file"
      t.datetime "created_at",        null: false
      t.datetime "updated_at",        null: false
    end

    create_table "comments", force: :cascade do |t|
      t.string   "name",       null: false
      t.string   "comment",    null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "course_modules", force: :cascade do |t|
      t.string   "module_num", null: false
      t.integer  "course_id",  null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "course_weeks", force: :cascade do |t|
      t.string   "week_num",         null: false
      t.integer  "course_module_id", null: false
      t.datetime "created_at",       null: false
      t.datetime "updated_at",       null: false
    end

    create_table "courses", force: :cascade do |t|
      t.string   "course_num", null: false
      t.string   "name",       null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
