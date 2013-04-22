require 'spec_helper'

describe "motos/new" do
  before(:each) do
    assign(:moto, stub_model(Moto,
      :nome => "MyString",
      :marca => "MyString",
      :cliente => nil,
      :funcionario => nil
    ).as_new_record)
  end

  it "renders new moto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", motos_path, "post" do
      assert_select "input#moto_nome[name=?]", "moto[nome]"
      assert_select "input#moto_marca[name=?]", "moto[marca]"
      assert_select "input#moto_cliente[name=?]", "moto[cliente]"
      assert_select "input#moto_funcionario[name=?]", "moto[funcionario]"
    end
  end
end
