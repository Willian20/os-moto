# coding: utf-8

require 'spec_helper'

feature 'gerenciar funcao' do

  scenario 'incluir Funcao' do # , :js => true  do

    visit new_funcao_path

    preencher_e_verificar_funcao

    

  end

  scenario 'alterar funcao' do #, :js => true  do

    funcao = FactoryGirl.create(:funcao)

    visit edit_funcao_path(funcao)

    preencher_e_verificar_funcao



  end

   scenario 'excluir curso' do #, :javascript => true  do

       funcao = FactoryGirl.create(:funcao)

        visit funcaos_path

        click_link 'Excluir'

    

  end
  def preencher_e_verificar_funcao

      fill_in 'Nome',  :with => "eletricista"

        
 
      click_button 'Salvar'

      page.should have_content 'Nome: eletricista'

      

   end
end
