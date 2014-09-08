require 'spec_helper'

describe "diputados/show" do
  before(:each) do
    @diputado = assign(:diputado, stub_model(Diputado,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Correo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefono/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Partido Postulante/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Partido Actual/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Direccion/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ext/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url Foto/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Distrito/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Facebook/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Twitter/)
  end
end
