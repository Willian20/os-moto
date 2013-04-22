# coding: utf-8

require 'spec_helper'

feature 'gerenciar material' do

  scenario 'incluir Material' do # , :js => true  do

    visit new_material_path

    preencher_e_verificar_material

    

  end

  scenario 'alterar material' do #, :js => true  do

    material = FactoryGirl.create(:material)

    visit edit_material_path(material)

    preencher_e_verificar_material



  end

   scenario 'excluir material' do #, :javascript => true  do

       material = FactoryGirl.create(:material)

        visit materials_path

        click_link 'Excluir'

    

  end
  def preencher_e_verificar_material

      fill_in 'Nome',  :with => "Roda"
      fill_in 'Fabricante',  :with => "Monaco"
      fill_in 'Preco',  :with => "200,00"
         

        
 
      click_button 'Salvar'

      page.should have_content 'Nome: Roda'
      page.should have_content 'Fabricante: Monaco'
      page.should have_content 'Preco: 200,00'
      

   end
end
