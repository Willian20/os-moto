# coding: utf-8

require 'spec_helper'

feature 'gerenciar funcionario' do

  scenario 'incluir Funcionario' do # , :js => true  do

    visit new_funcionario_path

    preencher_e_verificar_funcionario

    

  end

  scenario 'alterar funcionario' do #, :js => true  do

    funcionario = FactoryGirl.create(:funcionario)

    visit edit_funcionario_path(funcionario)

    preencher_e_verificar_funcionario



  end

   scenario 'excluir funcionario' do #, :javascript => true  do

       funcionario = FactoryGirl.create(:funcionario)

        visit funcionarios_path

        click_link 'Excluir'

    

  end
  def preencher_e_verificar_funcionario

      fill_in 'Nome',  :with => "Willian"
      fill_in 'Cpf',  :with => "099345678"
      fill_in 'Telefone',  :with => "2734567"
      fill_in 'Formacao',  :with => "técnica"
      fill_in 'Funcao',  :with => "Mecanico"
     

        
 
      click_button 'Salvar'

      page.should have_content 'Nome: Willian'
      page.should have_content 'Cpf: 099345678'
      page.should have_content 'Telefone: 2734567'
      page.should have_content 'Formacao: técnica'
      page.should have_content 'Funcao: Mecanico'


      

   end
end
