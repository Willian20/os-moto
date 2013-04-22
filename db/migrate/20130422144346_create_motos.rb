class CreateMotos < ActiveRecord::Migration
  def change
    create_table :motos do |t|
      t.string :nome
      t.string :marca
      t.references :cliente
      t.references :funcionario

      t.timestamps
    end
    add_index :motos, :cliente_id
    add_index :motos, :funcionario_id
  end
end
