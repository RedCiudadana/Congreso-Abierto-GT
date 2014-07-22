require 'spec_helper'

describe "comisions/new" do
  before(:each) do
    assign(:comision, stub_model(Comision,
      :nombre => "MyString",
      :descripcion => "MyString",
      :direccion => "MyString",
      :telefono => "MyString",
      :ext => "MyString",
      :activa => ""
    ).as_new_record)
  end

  it "renders new comision form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comisions_path, :method => "post" do
      assert_select "input#comision_nombre", :name => "comision[nombre]"
      assert_select "input#comision_descripcion", :name => "comision[descripcion]"
      assert_select "input#comision_direccion", :name => "comision[direccion]"
      assert_select "input#comision_telefono", :name => "comision[telefono]"
      assert_select "input#comision_ext", :name => "comision[ext]"
      assert_select "input#comision_activa", :name => "comision[activa]"
    end
  end
end
