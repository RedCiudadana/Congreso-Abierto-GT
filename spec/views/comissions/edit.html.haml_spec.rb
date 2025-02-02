require 'spec_helper'

describe "comissions/edit" do
  before(:each) do
    @comission = assign(:comission, stub_model(Comission,
      :nombre => "MyString",
      :descripcion => "MyString",
      :direccion => "MyString",
      :telefono => "MyString",
      :ext => "MyString",
      :activa => ""
    ))
  end

  it "renders the edit comission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comissions_path(@comission), :method => "post" do
      assert_select "input#comission_nombre", :name => "comission[nombre]"
      assert_select "input#comission_descripcion", :name => "comission[descripcion]"
      assert_select "input#comission_direccion", :name => "comission[direccion]"
      assert_select "input#comission_telefono", :name => "comission[telefono]"
      assert_select "input#comission_ext", :name => "comission[ext]"
      assert_select "input#comission_activa", :name => "comission[activa]"
    end
  end
end
