require 'spec_helper'

describe "asig_bill_comissions/index" do
  before(:each) do
    assign(:asig_bill_comissions, [
      stub_model(AsigBillComission,
        :bill_id => 1,
        :comission_id => 1
      ),
      stub_model(AsigBillComission,
        :bill_id => 1,
        :comission_id => 1
      )
    ])
  end

  it "renders a list of asig_bill_comissions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
