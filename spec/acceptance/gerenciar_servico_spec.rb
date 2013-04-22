# coding: utf-8
require 'spec_helper'

feature 'gerenciar servico' do

  scenario 'incluir servico' do #, :javascript => true  do

    cliente = FactoryGirl.create(:cliente, :nome => 'João') 
    funcionario = FactoryGirl.create(:funcionario, :nome => 'Willian')
    moto = FactoryGirl.create(:moto, :nome => 'DT250')
    material = FactoryGirl.create(:material, :nome => 'Roda')

    visit new_servico_path

    preencher_e_verificar_servico

    

  end

  scenario 'alterar servico' do #, :javascript => true  do

    cliente = FactoryGirl.create(:cliente, :nome => 'João')
    funcionario = FactoryGirl.create(:funcionario, :nome => 'Willian')
    moto = FactoryGirl.create(:moto, :nome => 'DT250')
    material = FactoryGirl.create(:material, :nome => 'Roda')

    servico = FactoryGirl.create(:servico,:cliente => cliente)
    servico = FactoryGirl.create(:servico,:funcionario => funcionario)
    servico = FactoryGirl.create(:servico,:moto => moto)
    servico = FactoryGirl.create(:servico,:material => material)

    visit edit_servico_path(servico)

    preencher_e_verificar_servico


  end

  scenario 'excluir servico' do #, :javascript => true  do

    cliente = FactoryGirl.create(:cliente, :nome => 'João')


    servico = FactoryGirl.create(:servico, :cliente => cliente)
    

    visit servicos_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_servico

    
    fill_in 'Data', :with => '15/05/2010'
    fill_in 'Valor', :with => '200,00'
    fill_in 'Status', :with => 'Concluido'
    
    select 'João', :exact => 'Cliente' 
    select 'Willian', :exact => 'Funcionario'
    select 'DT250', :exact => 'Moto'
    select 'Roda', :exact => 'Material'
    
    click_button 'Salvar'
    
    page.should have_content 'Data: 15/05/2010'
    page.should have_content 'Valor: 200,00'
    page.should have_content 'Status: Concluido'
    page.should have_content 'Cliente: João'
    page.should have_content 'Funcionario: Willian'
    page.should have_content 'Moto: DT250'
    page.should have_content 'Material: Roda'
  end

      

end
