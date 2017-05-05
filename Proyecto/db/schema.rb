# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170504105423) do

  create_table "disponibilidad_de_proyectos", force: :cascade do |t|
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "disponibilidad_nombre"
  end

  create_table "entradas", force: :cascade do |t|
    t.string   "entrada_texto"
    t.string   "fecha"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entradas", ["usuario_id"], name: "index_entradas_on_usuario_id"

  create_table "especialidades", force: :cascade do |t|
    t.string   "especialidad_nombre"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "habilidades", force: :cascade do |t|
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "nombre_habilidad"
  end

  create_table "nivel_de_proyectos", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "nivel_nombre"
  end

  create_table "perfiles", force: :cascade do |t|
    t.text "nombre_perfil_de_informatico"
  end

  create_table "posts", force: :cascade do |t|
    t.text     "contenido"
    t.integer  "user_id"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "participantes",         default: "--- []\n"
    t.string   "titulo"
    t.integer  "numeroDeFreelancers"
    t.string   "habilidadesNecesarias", default: "---\n- \"##\"\n"
    t.string   "nivelDeProyecto"
    t.string   "tiempoNecesario"
    t.string   "sugerencias"
    t.string   "necesidades"
    t.string   "tipoDeProyecto"
  end

  add_index "posts", ["habilidadesNecesarias"], name: "index_posts_on_habilidadesNecesarias"
  add_index "posts", ["necesidades"], name: "index_posts_on_necesidades"
  add_index "posts", ["nivelDeProyecto"], name: "index_posts_on_nivelDeProyecto"
  add_index "posts", ["numeroDeFreelancers"], name: "index_posts_on_numeroDeFreelancers"
  add_index "posts", ["sugerencias"], name: "index_posts_on_sugerencias"
  add_index "posts", ["tiempoNecesario"], name: "index_posts_on_tiempoNecesario"
  add_index "posts", ["user_id", "created_at"], name: "index_posts_on_user_id_and_created_at"
  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "tiempo_de_proyectos", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "tiempo_nombre"
  end

  create_table "tipo_de_habilidads", force: :cascade do |t|
    t.text     "tipo_de_habilidad_nombre"
    t.integer  "user_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "tipo_de_habilidads", ["user_id", "created_at"], name: "index_tipo_de_habilidads_on_user_id_and_created_at"
  add_index "tipo_de_habilidads", ["user_id"], name: "index_tipo_de_habilidads_on_user_id"

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
    t.string   "username"
    t.string   "avatar"
    t.string   "especialidad"
    t.string   "puntoFuerte"
    t.string   "perfiles"
    t.string   "nombreDeUsuario"
    t.integer  "edadDelUsuario"
    t.string   "DescripcionUsuario"
    t.string   "EducacionUsuario"
    t.string   "LogrosUsuario"
    t.string   "ExperienciasUsuario"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["perfiles"], name: "index_users_on_perfiles"
  add_index "users", ["puntoFuerte"], name: "index_users_on_puntoFuerte"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

  create_table "usuarios", force: :cascade do |t|
    t.string   "usuario_nombre"
    t.string   "usuario_nombre_usuario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
