require 'spec_helper'

describe "asig_comissions/show" do
  before(:each) do
    @asig_comission = assign(:asig_comission, stub_model(AsigComission,
      :diputado_id => 1,
      :comission_id => 1
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
