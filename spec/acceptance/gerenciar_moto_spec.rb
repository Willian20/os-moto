# coding: utf-8
require 'spec_helper'

feature 'gerenciar moto' do

  scenario 'incluir moto' do #, :javascript => true  do

    cliente = FactoryGirl.create(:cliente, :nome => 'João') 
    funcionario = FactoryGirl.create(:funcionario, :nome => 'Willian')

    visit new_moto_path

    preencher_e_verificar_moto

    

  end

  scenario 'alterar moto' do #, :javascript => true  do

    cliente = FactoryGirl.create(:cliente, :nome => 'João')
    funcionario = FactoryGirl.create(:funcionario, :nome => 'Willian')

    moto = FactoryGirl.create(:moto,:cliente => cliente)
    moto = FactoryGirl.create(:moto,:funcionario => funcionario)

    visit edit_moto_path(moto)

    preencher_e_verificar_moto


  end

  scenario 'excluir moto' do #, :javascript => true  do

    cliente = FactoryGirl.create(:cliente, :nome => 'João')


    moto = FactoryGirl.create(:moto, :cliente => cliente)
    

    visit motos_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_moto

    
    fill_in 'Nome', :with => 'DT250'
    fill_in 'Marca', :with => 'Yamarra'
    
    select 'João', :exact => 'Cliente' 
    select 'Willian', :exact => 'Funcionario'
    
    click_button 'Salvar'
    
    page.should have_content 'Nome: DT250'
    page.should have_content 'Marca: Yamarra'
    page.should have_content 'Cliente: João'
    page.should have_content 'Funcionario: Willian'
  end

      

end
