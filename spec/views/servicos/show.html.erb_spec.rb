require 'spec_helper'

describe "servicos/show" do
  before(:each) do
    @servico = assign(:servico, stub_model(Servico,
      :data => "Data",
      :valor => "Valor",
      :status => "Status",
      :cliente => nil,
      :funcionario => nil,
      :moto => nil,
      :material => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Data/)
    rendered.should match(/Valor/)
    rendered.should match(/Status/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
