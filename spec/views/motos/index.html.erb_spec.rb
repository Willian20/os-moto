require 'spec_helper'

describe "motos/index" do
  before(:each) do
    assign(:motos, [
      stub_model(Moto,
        :nome => "Nome",
        :marca => "Marca",
        :cliente => nil,
        :funcionario => nil
      ),
      stub_model(Moto,
        :nome => "Nome",
        :marca => "Marca",
        :cliente => nil,
        :funcionario => nil
      )
    ])
  end

  it "renders a list of motos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Marca".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
