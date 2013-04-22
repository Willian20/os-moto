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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130422182818) do

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "telefone"
    t.string   "dochabil"
    t.string   "endereco"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "funcionarios", :force => true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "telefone"
    t.string   "formacao"
    t.string   "funcao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "materials", :force => true do |t|
    t.string   "nome"
    t.string   "fabricante"
    t.string   "preco"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "motos", :force => true do |t|
    t.string   "nome"
    t.string   "marca"
    t.integer  "cliente_id"
    t.integer  "funcionario_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "motos", ["cliente_id"], :name => "index_motos_on_cliente_id"
  add_index "motos", ["funcionario_id"], :name => "index_motos_on_funcionario_id"

  create_table "servicos", :force => true do |t|
    t.string   "data"
    t.string   "valor"
    t.string   "status"
    t.integer  "cliente_id"
    t.integer  "funcionario_id"
    t.integer  "moto_id"
    t.integer  "material_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "servicos", ["cliente_id"], :name => "index_servicos_on_cliente_id"
  add_index "servicos", ["funcionario_id"], :name => "index_servicos_on_funcionario_id"
  add_index "servicos", ["material_id"], :name => "index_servicos_on_material_id"
  add_index "servicos", ["moto_id"], :name => "index_servicos_on_moto_id"

end
