require 'spec_helper'

describe "servicos/index" do
  before(:each) do
    assign(:servicos, [
      stub_model(Servico,
        :data => "Data",
        :valor => "Valor",
        :status => "Status",
        :cliente => nil,
        :funcionario => nil,
        :moto => nil,
        :material => nil
      ),
      stub_model(Servico,
        :data => "Data",
        :valor => "Valor",
        :status => "Status",
        :cliente => nil,
        :funcionario => nil,
        :moto => nil,
        :material => nil
      )
    ])
  end

  it "renders a list of servicos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "Valor".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
