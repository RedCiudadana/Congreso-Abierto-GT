require 'spec_helper'

describe "voto_diputados/new" do
  before(:each) do
    assign(:voto_diputado, stub_model(VotoDiputado).as_new_record)
  end

  it "renders new voto_diputado form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => voto_diputados_path, :method => "post" do
    end
  end
end
