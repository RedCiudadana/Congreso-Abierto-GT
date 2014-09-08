require 'spec_helper'

describe "asig_bill_diputados/show" do
  before(:each) do
    @asig_bill_diputado = assign(:asig_bill_diputado, stub_model(AsigBillDiputado,
      :bill_id => 1,
      :diputado_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
