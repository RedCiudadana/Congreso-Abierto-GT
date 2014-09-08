require 'spec_helper'

describe "asig_bill_comissions/new" do
  before(:each) do
    assign(:asig_bill_comission, stub_model(AsigBillComission,
      :bill_id => 1,
      :comission_id => 1
    ).as_new_record)
  end

  it "renders new asig_bill_comission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => asig_bill_comissions_path, :method => "post" do
      assert_select "input#asig_bill_comission_bill_id", :name => "asig_bill_comission[bill_id]"
      assert_select "input#asig_bill_comission_comission_id", :name => "asig_bill_comission[comission_id]"
    end
  end
end
