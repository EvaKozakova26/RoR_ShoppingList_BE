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

ActiveRecord::Schema.define(version: 2019_03_10_144933) do

  create_table "app_item", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.datetime "createdAt", precision: 6, null: false
    t.integer "count", null: false
    t.boolean "state", null: false
    t.integer "shoppingList_id"
    t.index ["shoppingList_id"], name: "app_item_shoppingList_id_695f7f8a_fk_app_shoppinglist_id"
  end

  create_table "app_shoppinglist", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.datetime "createdAt", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "app_shoppinglist_user_id_9274c460_fk_auth_user_id"
  end

  create_table "auth_group", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", limit: 80, null: false
    t.index ["name"], name: "name", unique: true
  end

  create_table "auth_group_permissions", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "permission_id", null: false
    t.index ["group_id", "permission_id"], name: "auth_group_permissions_group_id_permission_id_0cd325b0_uniq", unique: true
    t.index ["permission_id"], name: "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm"
  end

  create_table "auth_permission", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", null: false
    t.integer "content_type_id", null: false
    t.string "codename", limit: 100, null: false
    t.index ["content_type_id", "codename"], name: "auth_permission_content_type_id_codename_01ab375a_uniq", unique: true
  end

  create_table "auth_user", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "password", limit: 128, null: false
    t.datetime "last_login", precision: 6
    t.boolean "is_superuser", null: false
    t.string "username", limit: 150, null: false
    t.string "first_name", limit: 30, null: false
    t.string "last_name", limit: 150, null: false
    t.string "email", limit: 254, null: false
    t.boolean "is_staff", null: false
    t.boolean "is_active", null: false
    t.datetime "date_joined", precision: 6, null: false
    t.index ["username"], name: "username", unique: true
  end

  create_table "auth_user_groups", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "group_id", null: false
    t.index ["group_id"], name: "auth_user_groups_group_id_97559544_fk_auth_group_id"
    t.index ["user_id", "group_id"], name: "auth_user_groups_user_id_group_id_94350c0c_uniq", unique: true
  end

  create_table "auth_user_user_permissions", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "permission_id", null: false
    t.index ["permission_id"], name: "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm"
    t.index ["user_id", "permission_id"], name: "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq", unique: true
  end

  create_table "django_admin_log", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.datetime "action_time", precision: 6, null: false
    t.text "object_id", limit: 4294967295
    t.string "object_repr", limit: 200, null: false
    t.integer "action_flag", limit: 2, null: false, unsigned: true
    t.text "change_message", limit: 4294967295, null: false
    t.integer "content_type_id"
    t.integer "user_id", null: false
    t.index ["content_type_id"], name: "django_admin_log_content_type_id_c4bce8eb_fk_django_co"
    t.index ["user_id"], name: "django_admin_log_user_id_c564eba6_fk"
  end

  create_table "django_content_type", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "app_label", limit: 100, null: false
    t.string "model", limit: 100, null: false
    t.index ["app_label", "model"], name: "django_content_type_app_label_model_76bd3d3b_uniq", unique: true
  end

  create_table "django_migrations", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "app", null: false
    t.string "name", null: false
    t.datetime "applied", precision: 6, null: false
  end

  create_table "django_session", primary_key: "session_key", id: :string, limit: 40, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "session_data", limit: 4294967295, null: false
    t.datetime "expire_date", precision: 6, null: false
    t.index ["expire_date"], name: "django_session_expire_date_a5c62663"
  end

  create_table "item", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "count"
    t.datetime "created_at"
    t.string "name"
    t.boolean "state"
    t.integer "shopping_list_id"
    t.index ["shopping_list_id"], name: "shopping_list_id"
  end

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.integer "count"
    t.boolean "state"
    t.datetime "updated_at", null: false
  end

  create_table "role", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
  end

  create_table "shopping_list", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.datetime "created_at"
    t.integer "user_id"
    t.index ["user_id"], name: "user_id"
  end

  create_table "shopping_lists", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.integer "role_id"
    t.index ["role_id"], name: "role_id"
  end

  add_foreign_key "app_item", "app_shoppinglist", column: "shoppingList_id", name: "app_item_shoppingList_id_695f7f8a_fk_app_shoppinglist_id"
  add_foreign_key "app_shoppinglist", "auth_user", column: "user_id", name: "app_shoppinglist_user_id_9274c460_fk_auth_user_id"
  add_foreign_key "auth_group_permissions", "auth_group", column: "group_id", name: "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id"
  add_foreign_key "auth_group_permissions", "auth_permission", column: "permission_id", name: "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm"
  add_foreign_key "auth_permission", "django_content_type", column: "content_type_id", name: "auth_permission_content_type_id_2f476e4b_fk_django_co"
  add_foreign_key "auth_user_groups", "auth_group", column: "group_id", name: "auth_user_groups_group_id_97559544_fk_auth_group_id"
  add_foreign_key "auth_user_groups", "auth_user", column: "user_id", name: "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id"
  add_foreign_key "auth_user_user_permissions", "auth_permission", column: "permission_id", name: "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm"
  add_foreign_key "auth_user_user_permissions", "auth_user", column: "user_id", name: "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id"
  add_foreign_key "django_admin_log", "auth_user", column: "user_id", name: "django_admin_log_user_id_c564eba6_fk"
  add_foreign_key "django_admin_log", "django_content_type", column: "content_type_id", name: "django_admin_log_content_type_id_c4bce8eb_fk_django_co"
  add_foreign_key "item", "shopping_list", name: "item_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "shopping_list", "user", name: "shopping_list_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "user", "role", name: "user_ibfk_1", on_update: :cascade, on_delete: :nullify
end
