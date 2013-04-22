require 'spec_helper'

describe "servicos/new" do
  before(:each) do
    assign(:servico, stub_model(Servico,
      :data => "MyString",
      :valor => "MyString",
      :status => "MyString",
      :cliente => nil,
      :funcionario => nil,
      :moto => nil,
      :material => nil
    ).as_new_record)
  end

  it "renders new servico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", servicos_path, "post" do
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
