require 'spec_helper'

describe "clientes/index" do
  before(:each) do
    assign(:clientes, [
      stub_model(Cliente,
        :nome => "Nome",
        :cpf => "Cpf",
        :telefone => "Telefone",
        :dochabil => "Dochabil",
        :endereco => "Endereco"
      ),
      stub_model(Cliente,
        :nome => "Nome",
        :cpf => "Cpf",
        :telefone => "Telefone",
        :dochabil => "Dochabil",
        :endereco => "Endereco"
      )
    ])
  end

  it "renders a list of clientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Dochabil".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
  end
end
