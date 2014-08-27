require 'spec_helper'

describe "asig_bill_diputados/new" do
  before(:each) do
    assign(:asig_bill_diputado, stub_model(AsigBillDiputado,
      :bill_id => 1,
      :diputado_id => 1
    ).as_new_record)
  end

  it "renders new asig_bill_diputado form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => asig_bill_diputados_path, :method => "post" do
      assert_select "input#asig_bill_diputado_bill_id", :name => "asig_bill_diputado[bill_id]"
      assert_select "input#asig_bill_diputado_diputado_id", :name => "asig_bill_diputado[diputado_id]"
    end
  end
end
