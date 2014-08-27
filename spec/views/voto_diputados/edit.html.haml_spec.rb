require 'spec_helper'

describe "voto_diputados/edit" do
  before(:each) do
    @voto_diputado = assign(:voto_diputado, stub_model(VotoDiputado))
  end

  it "renders the edit voto_diputado form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => voto_diputados_path(@voto_diputado), :method => "post" do
    end
  end
end
