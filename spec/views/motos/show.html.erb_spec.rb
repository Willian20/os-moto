require 'spec_helper'

describe "motos/show" do
  before(:each) do
    @moto = assign(:moto, stub_model(Moto,
      :nome => "Nome",
      :marca => "Marca",
      :cliente => nil,
      :funcionario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Marca/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
