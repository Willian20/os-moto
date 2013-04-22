require 'spec_helper'

describe "materials/new" do
  before(:each) do
    assign(:material, stub_model(Material,
      :nome => "MyString",
      :fabricante => "MyString",
      :preco => "MyString"
    ).as_new_record)
  end

  it "renders new material form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", materials_path, "post" do
      assert_select "input#material_nome[name=?]", "material[nome]"
      assert_select "input#material_fabricante[name=?]", "material[fabricante]"
      assert_select "input#material_preco[name=?]", "material[preco]"
    end
  end
end
