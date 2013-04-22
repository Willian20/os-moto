class Moto < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :funcionario
  attr_accessible :cliente_id, :funcionario_id, :marca, :nome
end
