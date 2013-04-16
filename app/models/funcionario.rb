class Funcionario < ActiveRecord::Base
  attr_accessible :cpf, :formacao, :funcao, :nome, :telefone
end
