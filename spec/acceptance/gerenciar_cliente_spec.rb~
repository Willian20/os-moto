# coding: utf-8

require 'spec_helper'

feature 'gerenciar cliente' do

  scenario 'incluir Cliente' do # , :js => true  do

    visit new_cliente_path

    preencher_e_verificar_cliente

    

  end

  scenario 'alterar cliente' do #, :js => true  do

    cliente = FactoryGirl.create(:cliente)

    visit edit_cliente_path(cliente)

    preencher_e_verificar_cliente



  end

   scenario 'excluir cliente' do #, :javascript => true  do

       cliente = FactoryGirl.create(:cliente)

        visit clientes_path

        click_link 'Excluir'

    

  end
  def preencher_e_verificar_cliente

      fill_in 'Nome',  :with => "João"
      fill_in 'Cpf',  :with => "099345678"
      fill_in 'Telefone',  :with => "2734567"
      fill_in 'Dochabil',  :with => "203895943"
      fill_in 'Endereco',  :with => "Tarciso Miranda"
     

        
 
      click_button 'Salvar'

      page.should have_content 'Nome: João'
      page.should have_content 'Cpf: 099345678'
      page.should have_content 'Telefone: 2734567'
      page.should have_content 'Dochabil: 203895943'
      page.should have_content 'Endereco: Tarciso Miranda'


      

   end
end
