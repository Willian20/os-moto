require 'spec_helper'

describe "clientes/show" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :nome => "Nome",
      :cpf => "Cpf",
      :telefone => "Telefone",
      :dochabil => "Dochabil",
      :endereco => "Endereco"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Cpf/)
    rendered.should match(/Telefone/)
    rendered.should match(/Dochabil/)
    rendered.should match(/Endereco/)
  end
end
