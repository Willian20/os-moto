require 'spec_helper'

describe "funcionarios/show" do
  before(:each) do
    @funcionario = assign(:funcionario, stub_model(Funcionario,
      :nome => "Nome",
      :cpf => "Cpf",
      :telefone => "Telefone",
      :formacao => "Formacao",
      :funcao => "Funcao"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Cpf/)
    rendered.should match(/Telefone/)
    rendered.should match(/Formacao/)
    rendered.should match(/Funcao/)
  end
end
