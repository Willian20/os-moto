class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.string :telefone
      t.string :dochabil
      t.string :endereco

      t.timestamps
    end
  end
end
