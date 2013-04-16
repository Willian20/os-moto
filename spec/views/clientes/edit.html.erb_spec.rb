require 'spec_helper'

describe "clientes/edit" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :nome => "MyString",
      :cpf => "MyString",
      :telefone => "MyString",
      :dochabil => "MyString",
      :endereco => "MyString"
    ))
  end

  it "renders the edit cliente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cliente_path(@cliente), "post" do
      assert_select "input#cliente_nome[name=?]", "cliente[nome]"
      assert_select "input#cliente_cpf[name=?]", "cliente[cpf]"
      assert_select "input#cliente_telefone[name=?]", "cliente[telefone]"
      assert_select "input#cliente_dochabil[name=?]", "cliente[dochabil]"
      assert_select "input#cliente_endereco[name=?]", "cliente[endereco]"
    end
  end
end
