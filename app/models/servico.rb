class Servico < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :funcionario
  belongs_to :moto
  belongs_to :material
  attr_accessible :cliente_id, :funcionario_id, :moto_id, :material_id, :data, :status, :valor
end
