require 'spec_helper'

describe "motos/edit" do
  before(:each) do
    @moto = assign(:moto, stub_model(Moto,
      :nome => "MyString",
      :marca => "MyString",
      :cliente => nil,
      :funcionario => nil
    ))
  end

  it "renders the edit moto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", moto_path(@moto), "post" do
      assert_select "input#moto_nome[name=?]", "moto[nome]"
      assert_select "input#moto_marca[name=?]", "moto[marca]"
      assert_select "input#moto_cliente[name=?]", "moto[cliente]"
      assert_select "input#moto_funcionario[name=?]", "moto[funcionario]"
    end
  end
end
