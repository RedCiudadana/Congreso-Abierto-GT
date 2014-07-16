require 'spec_helper'

describe "diputados/new" do
  before(:each) do
    assign(:diputado, stub_model(Diputado,
      :nombre => "MyString",
      :correo => "MyString",
      :telefono => "MyString",
      :partido_postulante => "MyString",
      :partido_actual => "MyString",
      :direccion => "MyString",
      :ext => "MyString",
      :url_foto => "MyString",
      :distrito => "MyString",
      :facebook => "MyString",
      :twitter => "MyString"
    ).as_new_record)
  end

  it "renders new diputado form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => diputados_path, :method => "post" do
      assert_select "input#diputado_nombre", :name => "diputado[nombre]"
      assert_select "input#diputado_correo", :name => "diputado[correo]"
      assert_select "input#diputado_telefono", :name => "diputado[telefono]"
      assert_select "input#diputado_partido_postulante", :name => "diputado[partido_postulante]"
      assert_select "input#diputado_partido_actual", :name => "diputado[partido_actual]"
      assert_select "input#diputado_direccion", :name => "diputado[direccion]"
      assert_select "input#diputado_ext", :name => "diputado[ext]"
      assert_select "input#diputado_url_foto", :name => "diputado[url_foto]"
      assert_select "input#diputado_distrito", :name => "diputado[distrito]"
      assert_select "input#diputado_facebook", :name => "diputado[facebook]"
      assert_select "input#diputado_twitter", :name => "diputado[twitter]"
    end
  end
end
