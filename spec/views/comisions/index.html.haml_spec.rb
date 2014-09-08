require 'spec_helper'

describe "comisions/index" do
  before(:each) do
    assign(:comisions, [
      stub_model(Comision,
        :nombre => "Nombre",
        :descripcion => "Descripcion",
        :direccion => "Direccion",
        :telefono => "Telefono",
        :ext => "Ext",
        :activa => ""
      ),
      stub_model(Comision,
        :nombre => "Nombre",
        :descripcion => "Descripcion",
        :direccion => "Direccion",
        :telefono => "Telefono",
        :ext => "Ext",
        :activa => ""
      )
    ])
  end

  it "renders a list of comisions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Descripcion".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Direccion".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefono".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ext".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
