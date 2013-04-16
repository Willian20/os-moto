class Cliente < ActiveRecord::Base
  attr_accessible :cpf, :dochabil, :endereco, :nome, :telefone
end
