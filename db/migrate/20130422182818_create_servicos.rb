class CreateServicos < ActiveRecord::Migration
  def change
    create_table :servicos do |t|
      t.string :data
      t.string :valor
      t.string :status
      t.references :cliente
      t.references :funcionario
      t.references :moto
      t.references :material

      t.timestamps
    end
    add_index :servicos, :cliente_id
    add_index :servicos, :funcionario_id
    add_index :servicos, :moto_id
    add_index :servicos, :material_id
  end
end
