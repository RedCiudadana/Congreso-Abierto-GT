require 'spec_helper'

describe "diputados/index" do
  before(:each) do
    assign(:diputados, [
      stub_model(Diputado,
        :nombre => "Nombre",
        :correo => "Correo",
        :telefono => "Telefono",
        :partido_postulante => "Partido Postulante",
        :partido_actual => "Partido Actual",
        :direccion => "Direccion",
        :ext => "Ext",
        :url_foto => "Url Foto",
        :distrito => "Distrito",
        :facebook => "Facebook",
        :twitter => "Twitter"
      ),
      stub_model(Diputado,
        :nombre => "Nombre",
        :correo => "Correo",
        :telefono => "Telefono",
        :partido_postulante => "Partido Postulante",
        :partido_actual => "Partido Actual",
        :direccion => "Direccion",
        :ext => "Ext",
        :url_foto => "Url Foto",
        :distrito => "Distrito",
        :facebook => "Facebook",
        :twitter => "Twitter"
      )
    ])
  end

  it "renders a list of diputados" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Correo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefono".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Partido Postulante".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Partido Actual".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Direccion".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ext".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url Foto".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Distrito".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Facebook".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
  end
end
