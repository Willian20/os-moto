require 'spec_helper'

describe "funcionarios/index" do
  before(:each) do
    assign(:funcionarios, [
      stub_model(Funcionario,
        :nome => "Nome",
        :cpf => "Cpf",
        :telefone => "Telefone",
        :formacao => "Formacao",
        :funcao => "Funcao"
      ),
      stub_model(Funcionario,
        :nome => "Nome",
        :cpf => "Cpf",
        :telefone => "Telefone",
        :formacao => "Formacao",
        :funcao => "Funcao"
      )
    ])
  end

  it "renders a list of funcionarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Formacao".to_s, :count => 2
    assert_select "tr>td", :text => "Funcao".to_s, :count => 2
  end
end
