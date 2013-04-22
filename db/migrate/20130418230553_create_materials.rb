class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :nome
      t.string :fabricante
      t.string :preco

      t.timestamps
    end
  end
end
