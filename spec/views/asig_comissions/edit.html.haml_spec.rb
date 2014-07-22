require 'spec_helper'

describe "asig_comissions/edit" do
  before(:each) do
    @asig_comission = assign(:asig_comission, stub_model(AsigComission,
      :diputado_id => 1,
      :comission_id => 1
    ))
  end

  it "renders the edit asig_comission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => asig_comissions_path(@asig_comission), :method => "post" do
      assert_select "input#asig_comission_diputado_id", :name => "asig_comission[diputado_id]"
      assert_select "input#asig_comission_comission_id", :name => "asig_comission[comission_id]"
    end
  end
end
