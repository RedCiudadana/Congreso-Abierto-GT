require 'spec_helper'

describe "asig_comissions/new" do
  before(:each) do
    assign(:asig_comission, stub_model(AsigComission,
      :diputado_id => 1,
      :comission_id => 1
    ).as_new_record)
  end

  it "renders new asig_comission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => asig_comissions_path, :method => "post" do
      assert_select "input#asig_comission_diputado_id", :name => "asig_comission[diputado_id]"
      assert_select "input#asig_comission_comission_id", :name => "asig_comission[comission_id]"
    end
  end
end
