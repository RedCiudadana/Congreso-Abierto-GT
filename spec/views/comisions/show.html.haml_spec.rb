require 'spec_helper'

describe "comisions/show" do
  before(:each) do
    @comision = assign(:comision, stub_model(Comision,
      :nombre => "Nombre",
      :descripcion => "Descripcion",
      :direccion => "Direccion",
      :telefono => "Telefono",
      :ext => "Ext",
      :activa => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Descripcion/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Direccion/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefono/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ext/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
