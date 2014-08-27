require 'spec_helper'

describe "asig_bill_comissions/edit" do
  before(:each) do
    @asig_bill_comission = assign(:asig_bill_comission, stub_model(AsigBillComission,
      :bill_id => 1,
      :comission_id => 1
    ))
  end

  it "renders the edit asig_bill_comission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => asig_bill_comissions_path(@asig_bill_comission), :method => "post" do
      assert_select "input#asig_bill_comission_bill_id", :name => "asig_bill_comission[bill_id]"
      assert_select "input#asig_bill_comission_comission_id", :name => "asig_bill_comission[comission_id]"
    end
  end
end
