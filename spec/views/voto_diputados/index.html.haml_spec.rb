require 'spec_helper'

describe "voto_diputados/index" do
  before(:each) do
    assign(:voto_diputados, [
      stub_model(VotoDiputado),
      stub_model(VotoDiputado)
    ])
  end

  it "renders a list of voto_diputados" do
    render
  end
end
