require 'spec_helper'

describe "servicos/edit" do
  before(:each) do
    @servico = assign(:servico, stub_model(Servico,
      :data => "MyString",
      :valor => "MyString",
      :status => "MyString",
      :cliente => nil,
      :funcionario => nil,
      :moto => nil,
      :material => nil
    ))
  end

  it "renders the edit servico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", servico_path(@servico), "post" do
      assert_select "input#servico_data[name=?]", "servico[data]"
      assert_select "input#servico_valor[name=?]", "servico[valor]"
      assert_select "input#servico_status[name=?]", "servico[status]"
      assert_select "input#servico_cliente[name=?]", "servico[cliente]"
      assert_select "input#servico_funcionario[name=?]", "servico[funcionario]"
      assert_select "input#servico_moto[name=?]", "servico[moto]"
      assert_select "input#servico_material[name=?]", "servico[material]"
    end
  end
end
