require 'spec_helper'

describe "voto_diputados/show" do
  before(:each) do
    @voto_diputado = assign(:voto_diputado, stub_model(VotoDiputado))
  end

  it "renders attributes in <p>" do
    render
  end
end
