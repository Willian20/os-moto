require 'spec_helper'

describe "materials/index" do
  before(:each) do
    assign(:materials, [
      stub_model(Material,
        :nome => "Nome",
        :fabricante => "Fabricante",
        :preco => "Preco"
      ),
      stub_model(Material,
        :nome => "Nome",
        :fabricante => "Fabricante",
        :preco => "Preco"
      )
    ])
  end

  it "renders a list of materials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Fabricante".to_s, :count => 2
    assert_select "tr>td", :text => "Preco".to_s, :count => 2
  end
end
